.class public Landroid/hardware/tv/hdmi/cec/IHdmiCecCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IHdmiCecCallback.java"

# interfaces
.implements Landroid/hardware/tv/hdmi/cec/IHdmiCecCallback;


# instance fields
.field public mCachedHash:Ljava/lang/String;

.field public mCachedVersion:I

.field public mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/tv/hdmi/cec/IHdmiCecCallback$Stub$Proxy;->mCachedVersion:I

    const-string v0, "-1"

    iput-object v0, p0, Landroid/hardware/tv/hdmi/cec/IHdmiCecCallback$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    iput-object p1, p0, Landroid/hardware/tv/hdmi/cec/IHdmiCecCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Landroid/hardware/tv/hdmi/cec/IHdmiCecCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method
