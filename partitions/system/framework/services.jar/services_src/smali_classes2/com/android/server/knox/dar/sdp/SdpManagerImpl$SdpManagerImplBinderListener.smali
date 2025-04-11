.class public final Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerImplBinderListener;
.super Ljava/lang/Object;
.source "SdpManagerImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public caller:I

.field public mAlias:Ljava/lang/String;

.field public final mListener:Lcom/samsung/android/knox/dar/sdp/ISdpListener;

.field public final synthetic this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;Ljava/lang/String;Lcom/samsung/android/knox/dar/sdp/ISdpListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerImplBinderListener;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerImplBinderListener;->caller:I

    iput-object p3, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerImplBinderListener;->mListener:Lcom/samsung/android/knox/dar/sdp/ISdpListener;

    iput-object p2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerImplBinderListener;->mAlias:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    const-string v0, "SdpManagerImpl"

    const-string v1, "An ISdpListener has died!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerImplBinderListener;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$fgetmBinderListeners(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerImplBinderListener;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$fgetmBinderListeners(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerImplBinderListener;->mAlias:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerImplBinderListener;->mListener:Lcom/samsung/android/knox/dar/sdp/ISdpListener;

    invoke-interface {v2}, Lcom/samsung/android/knox/dar/sdp/ISdpListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerImplBinderListener;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$fgetmBinderListeners(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)Ljava/util/Map;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerImplBinderListener;->mAlias:Ljava/lang/String;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setCaller(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerImplBinderListener;->caller:I

    return-void
.end method
