.class public Lcom/android/server/companion/virtual/VirtualDeviceImpl$1;
.super Ljava/lang/Object;
.source "VirtualDeviceImpl.java"

# interfaces
.implements Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$1;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayEmpty(I)V
    .locals 1

    .line 191
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$1;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    invoke-static {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->-$$Nest$fgetmActivityListener(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)Landroid/companion/virtual/IVirtualDeviceActivityListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/companion/virtual/IVirtualDeviceActivityListener;->onDisplayEmpty(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "VirtualDeviceImpl"

    const-string v0, "Unable to call mActivityListener"

    .line 193
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onTopActivityChanged(ILandroid/content/ComponentName;)V
    .locals 1

    .line 171
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$1;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    invoke-static {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->-$$Nest$fgetmActivityListener(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)Landroid/companion/virtual/IVirtualDeviceActivityListener;

    move-result-object p0

    const/16 v0, -0x2710

    invoke-interface {p0, p1, p2, v0}, Landroid/companion/virtual/IVirtualDeviceActivityListener;->onTopActivityChanged(ILandroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "VirtualDeviceImpl"

    const-string p2, "Unable to call mActivityListener"

    .line 174
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onTopActivityChanged(ILandroid/content/ComponentName;I)V
    .locals 0

    .line 182
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$1;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    invoke-static {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->-$$Nest$fgetmActivityListener(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)Landroid/companion/virtual/IVirtualDeviceActivityListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroid/companion/virtual/IVirtualDeviceActivityListener;->onTopActivityChanged(ILandroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "VirtualDeviceImpl"

    const-string p2, "Unable to call mActivityListener"

    .line 184
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
