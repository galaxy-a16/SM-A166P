.class public Lvendor/samsung/hardware/mpos/ISehMpos$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISehMpos.java"

# interfaces
.implements Lvendor/samsung/hardware/mpos/ISehMpos;


# instance fields
.field public mCachedHash:Ljava/lang/String;

.field public mCachedVersion:I

.field public mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 230
    iput v0, p0, Lvendor/samsung/hardware/mpos/ISehMpos$Stub$Proxy;->mCachedVersion:I

    const-string v0, "-1"

    .line 231
    iput-object v0, p0, Lvendor/samsung/hardware/mpos/ISehMpos$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 228
    iput-object p1, p0, Lvendor/samsung/hardware/mpos/ISehMpos$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 234
    iget-object p0, p0, Lvendor/samsung/hardware/mpos/ISehMpos$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method
