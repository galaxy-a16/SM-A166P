.class public final Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventDispatchedListenerRecord;
.super Ljava/lang/Object;
.source "MediaSessionService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final callback:Landroid/media/session/IOnMediaKeyEventDispatchedListener;

.field public final synthetic this$1:Lcom/android/server/media/MediaSessionService$FullUserRecord;

.field public final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/IOnMediaKeyEventDispatchedListener;I)V
    .locals 0

    .line 1154
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventDispatchedListenerRecord;->this$1:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1155
    iput-object p2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventDispatchedListenerRecord;->callback:Landroid/media/session/IOnMediaKeyEventDispatchedListener;

    .line 1156
    iput p3, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventDispatchedListenerRecord;->uid:I

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 1161
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventDispatchedListenerRecord;->this$1:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1162
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventDispatchedListenerRecord;->this$1:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmOnMediaKeyEventDispatchedListeners(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Ljava/util/HashMap;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventDispatchedListenerRecord;->callback:Landroid/media/session/IOnMediaKeyEventDispatchedListener;

    invoke-interface {p0}, Landroid/media/session/IOnMediaKeyEventDispatchedListener;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1163
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
