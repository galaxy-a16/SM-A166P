.class public final synthetic Lcom/android/server/storage/StorageUserConnection$ActiveConnection$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/storage/StorageUserConnection$ActiveConnection;

.field public final synthetic f$1:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/storage/StorageUserConnection$ActiveConnection;Ljava/util/concurrent/CompletableFuture;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/storage/StorageUserConnection$ActiveConnection;

    iput-object p2, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$$ExternalSyntheticLambda3;->f$1:Ljava/util/concurrent/CompletableFuture;

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/storage/StorageUserConnection$ActiveConnection;

    iget-object p0, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$$ExternalSyntheticLambda3;->f$1:Ljava/util/concurrent/CompletableFuture;

    invoke-static {v0, p0, p1}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->$r8$lambda$FEark3qKXdf7J4q76s47jPohPig(Lcom/android/server/storage/StorageUserConnection$ActiveConnection;Ljava/util/concurrent/CompletableFuture;Landroid/os/Bundle;)V

    return-void
.end method
