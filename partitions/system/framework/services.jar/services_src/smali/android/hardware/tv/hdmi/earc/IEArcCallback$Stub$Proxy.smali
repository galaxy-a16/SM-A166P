.class public Landroid/hardware/tv/hdmi/earc/IEArcCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IEArcCallback.java"

# interfaces
.implements Landroid/hardware/tv/hdmi/earc/IEArcCallback;


# instance fields
.field public mCachedHash:Ljava/lang/String;

.field public mCachedVersion:I

.field public mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 127
    iput v0, p0, Landroid/hardware/tv/hdmi/earc/IEArcCallback$Stub$Proxy;->mCachedVersion:I

    const-string v0, "-1"

    .line 128
    iput-object v0, p0, Landroid/hardware/tv/hdmi/earc/IEArcCallback$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 125
    iput-object p1, p0, Landroid/hardware/tv/hdmi/earc/IEArcCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 131
    iget-object p0, p0, Landroid/hardware/tv/hdmi/earc/IEArcCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method
