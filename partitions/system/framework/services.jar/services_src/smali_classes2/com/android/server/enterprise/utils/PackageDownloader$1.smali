.class public Lcom/android/server/enterprise/utils/PackageDownloader$1;
.super Landroid/content/BroadcastReceiver;
.source "PackageDownloader.java"


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 73
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 74
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 75
    invoke-static {v0}, Lcom/android/server/enterprise/utils/PackageDownloader;->-$$Nest$fgetmDownloadQueueIdMap(Lcom/android/server/enterprise/utils/PackageDownloader;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    if-lez p0, :cond_4

    .line 76
    invoke-static {v0}, Lcom/android/server/enterprise/utils/PackageDownloader;->-$$Nest$mhandleNetworkState(Lcom/android/server/enterprise/utils/PackageDownloader;)V

    goto :goto_1

    :cond_0
    const-string p1, "com.samsung.android.knox.intent.action.CHECK_REENROLLMENT_INTERNAL"

    .line 78
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "edm.intent.action.sec.CHECK_REENROLLMENT"

    .line 79
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "android.intent.action.DOWNLOAD_COMPLETE"

    .line 96
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 97
    invoke-static {v0}, Lcom/android/server/enterprise/utils/PackageDownloader;->-$$Nest$mhandleDownloadComplete(Lcom/android/server/enterprise/utils/PackageDownloader;)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string/jumbo p0, "pkg"

    .line 83
    invoke-virtual {p2, p0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string/jumbo p1, "url"

    .line 84
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string/jumbo v1, "targetPkgName"

    .line 85
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    if-nez p2, :cond_3

    .line 90
    invoke-static {v0, p0, p1}, Lcom/android/server/enterprise/utils/PackageDownloader;->-$$Nest$mhandleDownloadProcess(Lcom/android/server/enterprise/utils/PackageDownloader;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 94
    invoke-static {v0, p2, p1}, Lcom/android/server/enterprise/utils/PackageDownloader;->-$$Nest$mhandleDownloadProcess(Lcom/android/server/enterprise/utils/PackageDownloader;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method
