.class public final synthetic Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$Job;


# instance fields
.field public final synthetic f$0:Lcom/android/server/credentials/RemoteCredentialService;

.field public final synthetic f$1:Landroid/service/credentials/BeginGetCredentialRequest;

.field public final synthetic f$2:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic f$3:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/credentials/RemoteCredentialService;Landroid/service/credentials/BeginGetCredentialRequest;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/credentials/RemoteCredentialService;

    iput-object p2, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda5;->f$1:Landroid/service/credentials/BeginGetCredentialRequest;

    iput-object p3, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda5;->f$2:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda5;->f$3:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/credentials/RemoteCredentialService;

    iget-object v1, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda5;->f$1:Landroid/service/credentials/BeginGetCredentialRequest;

    iget-object v2, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda5;->f$2:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object p0, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda5;->f$3:Ljava/util/concurrent/atomic/AtomicReference;

    check-cast p1, Landroid/service/credentials/ICredentialProviderService;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/server/credentials/RemoteCredentialService;->$r8$lambda$uMlsgk4Vw5lSEa4NxF3m4EYBZag(Lcom/android/server/credentials/RemoteCredentialService;Landroid/service/credentials/BeginGetCredentialRequest;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Landroid/service/credentials/ICredentialProviderService;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method
