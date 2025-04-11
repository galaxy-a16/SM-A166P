.class public final synthetic Lcom/samsung/android/kmxservice/escrowvault/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I

.field public final synthetic d:Ljava/util/function/Consumer;

.field public final synthetic e:Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;ILjava/util/function/Consumer;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/i;->a:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/i;->b:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/kmxservice/escrowvault/i;->c:I

    iput-object p4, p0, Lcom/samsung/android/kmxservice/escrowvault/i;->d:Ljava/util/function/Consumer;

    iput-object p5, p0, Lcom/samsung/android/kmxservice/escrowvault/i;->e:Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/i;->a:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;

    iget-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/i;->b:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/kmxservice/escrowvault/i;->c:I

    iget-object v3, p0, Lcom/samsung/android/kmxservice/escrowvault/i;->d:Ljava/util/function/Consumer;

    iget-object v4, p0, Lcom/samsung/android/kmxservice/escrowvault/i;->e:Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;

    move-object v5, p1

    check-cast v5, Ljava/security/Key;

    move-object v6, p2

    check-cast v6, [B

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->a0(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;ILjava/util/function/Consumer;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;Ljava/security/Key;[B)V

    return-void
.end method
