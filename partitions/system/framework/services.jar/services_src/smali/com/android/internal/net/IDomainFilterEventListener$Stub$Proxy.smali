.class public Lcom/android/internal/net/IDomainFilterEventListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDomainFilterEventListener.java"

# interfaces
.implements Lcom/android/internal/net/IDomainFilterEventListener;


# instance fields
.field public mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/android/internal/net/IDomainFilterEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/internal/net/IDomainFilterEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method
