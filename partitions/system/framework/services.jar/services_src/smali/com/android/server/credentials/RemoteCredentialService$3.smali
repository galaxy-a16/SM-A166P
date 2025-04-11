.class public Lcom/android/server/credentials/RemoteCredentialService$3;
.super Landroid/service/credentials/IClearCredentialStateCallback$Stub;
.source "RemoteCredentialService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/credentials/RemoteCredentialService;

.field public final synthetic val$cancellationSink:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic val$clearCredentialFuture:Ljava/util/concurrent/CompletableFuture;

.field public final synthetic val$futureRef:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public constructor <init>(Lcom/android/server/credentials/RemoteCredentialService;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/android/server/credentials/RemoteCredentialService$3;->this$0:Lcom/android/server/credentials/RemoteCredentialService;

    iput-object p2, p0, Lcom/android/server/credentials/RemoteCredentialService$3;->val$clearCredentialFuture:Ljava/util/concurrent/CompletableFuture;

    iput-object p3, p0, Lcom/android/server/credentials/RemoteCredentialService$3;->val$futureRef:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lcom/android/server/credentials/RemoteCredentialService$3;->val$cancellationSink:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Landroid/service/credentials/IClearCredentialStateCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancellable(Landroid/os/ICancellationSignal;)V
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/android/server/credentials/RemoteCredentialService$3;->val$futureRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CompletableFuture;

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    iget-object p0, p0, Lcom/android/server/credentials/RemoteCredentialService$3;->this$0:Lcom/android/server/credentials/RemoteCredentialService;

    invoke-static {p0, p1}, Lcom/android/server/credentials/RemoteCredentialService;->-$$Nest$mdispatchCancellationSignal(Lcom/android/server/credentials/RemoteCredentialService;Landroid/os/ICancellationSignal;)V

    goto :goto_0

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/android/server/credentials/RemoteCredentialService$3;->val$cancellationSink:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 316
    iget-object v0, p0, Lcom/android/server/credentials/RemoteCredentialService$3;->this$0:Lcom/android/server/credentials/RemoteCredentialService;

    invoke-static {v0}, Lcom/android/server/credentials/RemoteCredentialService;->-$$Nest$fgetmCallback(Lcom/android/server/credentials/RemoteCredentialService;)Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 317
    iget-object p0, p0, Lcom/android/server/credentials/RemoteCredentialService$3;->this$0:Lcom/android/server/credentials/RemoteCredentialService;

    invoke-static {p0}, Lcom/android/server/credentials/RemoteCredentialService;->-$$Nest$fgetmCallback(Lcom/android/server/credentials/RemoteCredentialService;)Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;->onProviderCancellable(Landroid/os/ICancellationSignal;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onFailure(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 2

    if-nez p2, :cond_0

    const-string p2, ""

    goto :goto_0

    .line 302
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 303
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clear credential errorMsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteCredentialService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object p0, p0, Lcom/android/server/credentials/RemoteCredentialService$3;->val$clearCredentialFuture:Ljava/util/concurrent/CompletableFuture;

    new-instance v0, Landroid/credentials/ClearCredentialStateException;

    invoke-direct {v0, p1, p2}, Landroid/credentials/ClearCredentialStateException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 296
    iget-object p0, p0, Lcom/android/server/credentials/RemoteCredentialService$3;->val$clearCredentialFuture:Ljava/util/concurrent/CompletableFuture;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method
