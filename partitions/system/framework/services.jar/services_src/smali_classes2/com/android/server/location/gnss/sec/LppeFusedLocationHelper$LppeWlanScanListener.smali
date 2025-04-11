.class public Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$LppeWlanScanListener;
.super Ljava/lang/Object;
.source "LppeFusedLocationHelper.java"

# interfaces
.implements Landroid/net/wifi/WifiScanner$ScanListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$LppeWlanScanListener;->this$0:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$LppeWlanScanListener-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$LppeWlanScanListener;-><init>(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;)V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 4

    .line 383
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$LppeWlanScanListener;->this$0:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

    invoke-static {v0}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->-$$Nest$fgetmIsWifiScanRequested(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$LppeWlanScanListener;->this$0:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

    invoke-static {v0}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->-$$Nest$fgetmIsRetryWifiScan(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;)Z

    move-result v0

    const-string v1, ", description = "

    const-string v2, "LocationX"

    if-nez v0, :cond_1

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wlan scan failure. reason = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". try to scan wlan again."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object p1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$LppeWlanScanListener;->this$0:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

    invoke-static {p1}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->-$$Nest$mstartWifiScan(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;)V

    .line 389
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$LppeWlanScanListener;->this$0:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->-$$Nest$fputmIsRetryWifiScan(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;Z)V

    goto :goto_0

    .line 391
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2nd wlan scan failure. reason = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". set wlan scan error."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object p1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$LppeWlanScanListener;->this$0:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

    const/4 p2, 0x3

    invoke-static {p1, p2}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->-$$Nest$mhandleUpdateWlanError(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;I)V

    .line 394
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$LppeWlanScanListener;->this$0:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->-$$Nest$fputmIsWifiScanRequested(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;Z)V

    :goto_0
    return-void
.end method

.method public onFullResult(Landroid/net/wifi/ScanResult;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onPeriodChanged(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onResults([Landroid/net/wifi/WifiScanner$ScanData;)V
    .locals 2

    .line 371
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$LppeWlanScanListener;->this$0:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

    invoke-static {v0}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->-$$Nest$fgetmIsWifiScanRequested(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 373
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/net/wifi/WifiScanner$ScanData;->getResults()[Landroid/net/wifi/ScanResult;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 374
    iget-object p1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$LppeWlanScanListener;->this$0:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

    invoke-static {p1, v0}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->-$$Nest$mhandleUpdateWLANScanInfo(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;Ljava/util/List;)V

    .line 375
    iget-object p1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$LppeWlanScanListener;->this$0:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

    invoke-static {p1}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->-$$Nest$fgetmWlanTimeout(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 376
    iget-object p1, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$LppeWlanScanListener;->this$0:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

    invoke-static {p1}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->-$$Nest$fgetmHandler(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$LppeWlanScanListener;->this$0:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

    invoke-static {v0}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->-$$Nest$fgetmWlanTimeout(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 377
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper$LppeWlanScanListener;->this$0:Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;->-$$Nest$fputmWlanTimeout(Lcom/android/server/location/gnss/sec/LppeFusedLocationHelper;Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .line 0
    return-void
.end method
