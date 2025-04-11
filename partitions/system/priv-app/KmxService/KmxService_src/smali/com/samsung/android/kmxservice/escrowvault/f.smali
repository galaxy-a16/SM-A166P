.class public final synthetic Lcom/samsung/android/kmxservice/escrowvault/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I

.field public final synthetic d:Ljava/util/function/Consumer;

.field public final synthetic e:Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;

.field public final synthetic f:Ljava/security/Key;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;ILjava/util/function/Consumer;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;Ljava/security/Key;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/f;->a:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/f;->b:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/kmxservice/escrowvault/f;->c:I

    iput-object p4, p0, Lcom/samsung/android/kmxservice/escrowvault/f;->d:Ljava/util/function/Consumer;

    iput-object p5, p0, Lcom/samsung/android/kmxservice/escrowvault/f;->e:Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;

    iput-object p6, p0, Lcom/samsung/android/kmxservice/escrowvault/f;->f:Ljava/security/Key;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/f;->a:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;

    iget-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/f;->b:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/kmxservice/escrowvault/f;->c:I

    iget-object v3, p0, Lcom/samsung/android/kmxservice/escrowvault/f;->d:Ljava/util/function/Consumer;

    iget-object v4, p0, Lcom/samsung/android/kmxservice/escrowvault/f;->e:Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;

    iget-object v5, p0, Lcom/samsung/android/kmxservice/escrowvault/f;->f:Ljava/security/Key;

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->j0(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;ILjava/util/function/Consumer;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;Ljava/security/Key;)V

    return-void
.end method
