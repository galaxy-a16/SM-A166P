.class public Lcom/samsung/android/camera/scpm/ScpmReceiver$2;
.super Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;
.source "ScpmReceiver.java"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/camera/scpm/ScpmReceiver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/scpm/ScpmReceiver;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver$2;->this$0:Lcom/samsung/android/camera/scpm/ScpmReceiver;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraDeviceStateChanged(Ljava/lang/String;IILjava/lang/String;)V
    .locals 8

    const-wide/16 v0, 0x0

    .line 269
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 271
    iget-object v3, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver$2;->this$0:Lcom/samsung/android/camera/scpm/ScpmReceiver;

    invoke-static {v3}, Lcom/samsung/android/camera/scpm/ScpmReceiver;->-$$Nest$fgetmScpmListManager(Lcom/samsung/android/camera/scpm/ScpmReceiver;)Lcom/samsung/android/camera/scpm/ScpmListManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/camera/scpm/ScpmListManager;->getScpmList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/camera/scpm/PolicyListVO;

    .line 272
    iget-object v5, v4, Lcom/samsung/android/camera/scpm/PolicyListVO;->decodedName:Ljava/lang/String;

    invoke-virtual {v5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 273
    iget-object v2, v4, Lcom/samsung/android/camera/scpm/PolicyListVO;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 278
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, v3, v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const-string v0, "CameraService/ScpmReceiver"

    const-string v1, "cameraId"

    const-string v3, "facing"

    const-string/jumbo v4, "package_hint"

    const-string/jumbo v5, "package_name"

    const-string v6, "com.sec.android.sdhms"

    if-eqz p3, :cond_4

    const/4 v7, 0x3

    if-eq p3, v7, :cond_3

    goto :goto_0

    .line 298
    :cond_3
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    const-string v7, "com.samsung.android.camera.action.camera_close"

    .line 299
    invoke-virtual {p3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    invoke-virtual {p3, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    invoke-virtual {p3, v5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    invoke-virtual {p3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 303
    invoke-virtual {p3, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 304
    invoke-virtual {p3, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    iget-object p0, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver$2;->this$0:Lcom/samsung/android/camera/scpm/ScpmReceiver;

    invoke-static {p0}, Lcom/samsung/android/camera/scpm/ScpmReceiver;->-$$Nest$fgetmContext(Lcom/samsung/android/camera/scpm/ScpmReceiver;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 306
    invoke-static {}, Lcom/samsung/android/camera/scpm/ScpmReceiver;->-$$Nest$sfgetDEBUG()Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "Send Close Message to SDMHS"

    .line 307
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 284
    :cond_4
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    const-string v7, "com.samsung.android.camera.action.camera_open"

    .line 285
    invoke-virtual {p3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    invoke-virtual {p3, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    invoke-virtual {p3, v5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    invoke-virtual {p3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 289
    invoke-virtual {p3, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 290
    invoke-virtual {p3, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    iget-object p0, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver$2;->this$0:Lcom/samsung/android/camera/scpm/ScpmReceiver;

    invoke-static {p0}, Lcom/samsung/android/camera/scpm/ScpmReceiver;->-$$Nest$fgetmContext(Lcom/samsung/android/camera/scpm/ScpmReceiver;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 292
    invoke-static {}, Lcom/samsung/android/camera/scpm/ScpmReceiver;->-$$Nest$sfgetDEBUG()Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "Send Open Message to SDMHS"

    .line 293
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    return-void
.end method
