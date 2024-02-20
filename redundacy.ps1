function Get-ShadowRedundancyMessageCount {
    $queues = Get-Queue | Where-Object { $_.DeliveryType -eq 'ShadowRedundancy' }
    $messageCounts = @()

    foreach ($queue in $queues) {
        $messageCounts += $queue.MessageCount
    }

    $messageCounts
}

Get-ShadowRedundancyMessageCount

