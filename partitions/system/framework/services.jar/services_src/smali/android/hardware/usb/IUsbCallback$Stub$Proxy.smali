.class public Landroid/hardware/usb/IUsbCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IUsbCallback.java"

# interfaces
.implements Landroid/hardware/usb/IUsbCallback;


# instance fields
.field public mCachedHash:Ljava/lang/String;

.field public mCachedVersion:I

.field public mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 227
    iput v0, p0, Landroid/hardware/usb/IUsbCallback$Stub$Proxy;->mCachedVersion:I

    const-string v0, "-1"

    .line 228
    iput-object v0, p0, Landroid/hardware/usb/IUsbCallback$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 225
    iput-object p1, p0, Landroid/hardware/usb/IUsbCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 231
    iget-object p0, p0, Landroid/hardware/usb/IUsbCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method
