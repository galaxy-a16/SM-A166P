.class public final synthetic Lcom/samsung/android/kmxservice/escrowvault/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;

.field public final synthetic b:Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:I

.field public final synthetic e:Ljava/security/Key;

.field public final synthetic f:Z

.field public final synthetic g:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(ILcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;Ljava/lang/String;Ljava/security/Key;Ljava/util/function/Consumer;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/n;->a:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;

    iput-object p3, p0, Lcom/samsung/android/kmxservice/escrowvault/n;->b:Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;

    iput-object p4, p0, Lcom/samsung/android/kmxservice/escrowvault/n;->c:Ljava/lang/String;

    iput p1, p0, Lcom/samsung/android/kmxservice/escrowvault/n;->d:I

    iput-object p5, p0, Lcom/samsung/android/kmxservice/escrowvault/n;->e:Ljava/security/Key;

    iput-boolean p7, p0, Lcom/samsung/android/kmxservice/escrowvault/n;->f:Z

    iput-object p6, p0, Lcom/samsung/android/kmxservice/escrowvault/n;->g:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/n;->a:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;

    iget-object v2, p0, Lcom/samsung/android/kmxservice/escrowvault/n;->b:Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;

    iget-object v3, p0, Lcom/samsung/android/kmxservice/escrowvault/n;->c:Ljava/lang/String;

    iget v0, p0, Lcom/samsung/android/kmxservice/escrowvault/n;->d:I

    iget-object v4, p0, Lcom/samsung/android/kmxservice/escrowvault/n;->e:Ljava/security/Key;

    iget-boolean v6, p0, Lcom/samsung/android/kmxservice/escrowvault/n;->f:Z

    iget-object v5, p0, Lcom/samsung/android/kmxservice/escrowvault/n;->g:Ljava/util/function/Consumer;

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->T(ILcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;Ljava/lang/String;Ljava/security/Key;Ljava/util/function/Consumer;Z)V

    return-void
.end method
