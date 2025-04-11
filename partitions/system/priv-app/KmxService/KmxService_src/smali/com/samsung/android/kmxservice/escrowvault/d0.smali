.class public final synthetic Lcom/samsung/android/kmxservice/escrowvault/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$OnRequestCompleteListener;


# instance fields
.field public final synthetic a:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$UpdateVerifierBinder;

.field public final synthetic b:Lcom/android/internal/widget/b;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$UpdateVerifierBinder;Lcom/android/internal/widget/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/d0;->a:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$UpdateVerifierBinder;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/d0;->b:Lcom/android/internal/widget/b;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/d0;->a:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$UpdateVerifierBinder;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/d0;->b:Lcom/android/internal/widget/b;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$UpdateVerifierBinder;->a(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$UpdateVerifierBinder;Lcom/android/internal/widget/b;Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;)V

    return-void
.end method
