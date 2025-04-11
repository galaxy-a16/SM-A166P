.class public Landroid/hardware/light/ILights$Stub$Proxy;
.super Ljava/lang/Object;
.source "ILights.java"

# interfaces
.implements Landroid/hardware/light/ILights;


# instance fields
.field public mCachedHash:Ljava/lang/String;

.field public mCachedVersion:I

.field public mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 126
    iput v0, p0, Landroid/hardware/light/ILights$Stub$Proxy;->mCachedVersion:I

    const-string v0, "-1"

    .line 127
    iput-object v0, p0, Landroid/hardware/light/ILights$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 124
    iput-object p1, p0, Landroid/hardware/light/ILights$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 130
    iget-object p0, p0, Landroid/hardware/light/ILights$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method
