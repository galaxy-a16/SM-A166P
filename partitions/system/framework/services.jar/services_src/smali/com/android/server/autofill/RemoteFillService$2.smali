.class public Lcom/android/server/autofill/RemoteFillService$2;
.super Landroid/service/autofill/ISaveCallback$Stub;
.source "RemoteFillService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/autofill/RemoteFillService;

.field public final synthetic val$save:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/RemoteFillService;Ljava/util/concurrent/CompletableFuture;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService$2;->this$0:Lcom/android/server/autofill/RemoteFillService;

    iput-object p2, p0, Lcom/android/server/autofill/RemoteFillService$2;->val$save:Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p0}, Landroid/service/autofill/ISaveCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/CharSequence;)V
    .locals 1

    .line 217
    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService$2;->val$save:Ljava/util/concurrent/CompletableFuture;

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public onSuccess(Landroid/content/IntentSender;)V
    .locals 0

    .line 212
    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService$2;->val$save:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method
