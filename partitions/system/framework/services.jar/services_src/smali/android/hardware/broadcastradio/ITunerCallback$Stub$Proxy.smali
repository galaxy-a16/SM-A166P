.class public Landroid/hardware/broadcastradio/ITunerCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "ITunerCallback.java"

# interfaces
.implements Landroid/hardware/broadcastradio/ITunerCallback;


# instance fields
.field public mCachedHash:Ljava/lang/String;

.field public mCachedVersion:I

.field public mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 171
    iput v0, p0, Landroid/hardware/broadcastradio/ITunerCallback$Stub$Proxy;->mCachedVersion:I

    const-string v0, "-1"

    .line 172
    iput-object v0, p0, Landroid/hardware/broadcastradio/ITunerCallback$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 169
    iput-object p1, p0, Landroid/hardware/broadcastradio/ITunerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 175
    iget-object p0, p0, Landroid/hardware/broadcastradio/ITunerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method
