.class public Lcom/android/server/broadcastradio/aidl/RadioModule$3;
.super Landroid/hardware/radio/ICloseHandle$Stub;
.source "RadioModule.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/broadcastradio/aidl/RadioModule;

.field public final synthetic val$hwCloseHandle:[Landroid/hardware/broadcastradio/ICloseHandle;


# direct methods
.method public constructor <init>(Lcom/android/server/broadcastradio/aidl/RadioModule;[Landroid/hardware/broadcastradio/ICloseHandle;)V
    .locals 0

    .line 488
    iput-object p1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$3;->this$0:Lcom/android/server/broadcastradio/aidl/RadioModule;

    iput-object p2, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$3;->val$hwCloseHandle:[Landroid/hardware/broadcastradio/ICloseHandle;

    invoke-direct {p0}, Landroid/hardware/radio/ICloseHandle$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 5

    const/4 v0, 0x0

    .line 491
    :try_start_0
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$3;->val$hwCloseHandle:[Landroid/hardware/broadcastradio/ICloseHandle;

    aget-object v1, v1, v0

    invoke-interface {v1}, Landroid/hardware/broadcastradio/ICloseHandle;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Failed closing announcement listener"

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "BcRadioAidlSrv.module"

    .line 493
    invoke-static {v4, v1, v2, v3}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 495
    :goto_0
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$3;->val$hwCloseHandle:[Landroid/hardware/broadcastradio/ICloseHandle;

    const/4 v1, 0x0

    aput-object v1, p0, v0

    return-void
.end method
