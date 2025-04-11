.class public Lcom/android/server/chimera/SystemRepositoryDefault$3;
.super Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;
.source "SystemRepositoryDefault.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/chimera/SystemRepositoryDefault;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/SystemRepositoryDefault;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/chimera/SystemRepositoryDefault$3;->this$0:Lcom/android/server/chimera/SystemRepositoryDefault;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraDeviceStateChanged(Ljava/lang/String;IILjava/lang/String;)V
    .locals 3

    const-string p1, "android.system"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "com.sec.android.app.tinym"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/server/chimera/SystemRepositoryDefault$3;->this$0:Lcom/android/server/chimera/SystemRepositoryDefault;

    invoke-static {p1}, Lcom/android/server/chimera/SystemRepositoryDefault;->-$$Nest$fgetmSystemEventListenerHandler(Lcom/android/server/chimera/SystemRepositoryDefault;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    const-string p1, "com.sec.android.app.camera"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-wide/16 v0, 0x3e8

    if-ne p3, p2, :cond_1

    iget-object p1, p0, Lcom/android/server/chimera/SystemRepositoryDefault$3;->this$0:Lcom/android/server/chimera/SystemRepositoryDefault;

    invoke-static {p1}, Lcom/android/server/chimera/SystemRepositoryDefault;->-$$Nest$fgetmSystemEventListenerHandler(Lcom/android/server/chimera/SystemRepositoryDefault;)Landroid/os/Handler;

    move-result-object p1

    const/16 v2, 0xc

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    if-ne p3, p1, :cond_2

    iget-object p0, p0, Lcom/android/server/chimera/SystemRepositoryDefault$3;->this$0:Lcom/android/server/chimera/SystemRepositoryDefault;

    invoke-static {p0}, Lcom/android/server/chimera/SystemRepositoryDefault;->-$$Nest$fgetmSystemEventListenerHandler(Lcom/android/server/chimera/SystemRepositoryDefault;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0xd

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_2
    :goto_0
    if-ne p3, p2, :cond_4

    iget-object p1, p0, Lcom/android/server/chimera/SystemRepositoryDefault$3;->this$0:Lcom/android/server/chimera/SystemRepositoryDefault;

    invoke-static {p1}, Lcom/android/server/chimera/SystemRepositoryDefault;->-$$Nest$fgetmLastForegroundApp(Lcom/android/server/chimera/SystemRepositoryDefault;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/server/chimera/SystemRepositoryDefault$3;->this$0:Lcom/android/server/chimera/SystemRepositoryDefault;

    iget-object p1, p1, Lcom/android/server/chimera/SystemRepositoryDefault;->mCameraApps:Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;

    invoke-virtual {p1, p4}, Lcom/android/server/chimera/ICollectionCache$AbstractSharedCollectionCache;->contains(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/android/server/chimera/SystemRepositoryDefault$3;->this$0:Lcom/android/server/chimera/SystemRepositoryDefault;

    invoke-static {p1}, Lcom/android/server/chimera/SystemRepositoryDefault;->-$$Nest$fgetmLastForegroundApp(Lcom/android/server/chimera/SystemRepositoryDefault;)Landroid/util/Pair;

    move-result-object p1

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-object p3, p0, Lcom/android/server/chimera/SystemRepositoryDefault$3;->this$0:Lcom/android/server/chimera/SystemRepositoryDefault;

    invoke-static {p3}, Lcom/android/server/chimera/SystemRepositoryDefault;->-$$Nest$fgetmLastForegroundApp(Lcom/android/server/chimera/SystemRepositoryDefault;)Landroid/util/Pair;

    move-result-object p3

    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-wide/16 v0, 0xbb8

    cmp-long p1, p1, v0

    if-gez p1, :cond_4

    iget-object p0, p0, Lcom/android/server/chimera/SystemRepositoryDefault$3;->this$0:Lcom/android/server/chimera/SystemRepositoryDefault;

    iget-object p0, p0, Lcom/android/server/chimera/SystemRepositoryDefault;->mCameraApps:Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;

    invoke-virtual {p0, p4}, Lcom/android/server/chimera/ICollectionCache$AbstractSharedCollectionCache;->update(Ljava/lang/String;)Z

    :cond_4
    :goto_1
    return-void
.end method
