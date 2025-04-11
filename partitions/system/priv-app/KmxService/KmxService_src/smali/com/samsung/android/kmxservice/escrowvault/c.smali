.class public final synthetic Lcom/samsung/android/kmxservice/escrowvault/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I

.field public final synthetic d:Ljava/security/Key;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(ILandroid/os/Bundle;Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/security/Key;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/samsung/android/kmxservice/escrowvault/c;->a:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    iput-object p4, p0, Lcom/samsung/android/kmxservice/escrowvault/c;->b:Ljava/lang/String;

    iput p1, p0, Lcom/samsung/android/kmxservice/escrowvault/c;->c:I

    iput-object p7, p0, Lcom/samsung/android/kmxservice/escrowvault/c;->d:Ljava/security/Key;

    iput-object p5, p0, Lcom/samsung/android/kmxservice/escrowvault/c;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/kmxservice/escrowvault/c;->f:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/c;->g:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/c;->a:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    iget-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/c;->b:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/kmxservice/escrowvault/c;->c:I

    iget-object v3, p0, Lcom/samsung/android/kmxservice/escrowvault/c;->d:Ljava/security/Key;

    iget-object v4, p0, Lcom/samsung/android/kmxservice/escrowvault/c;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/kmxservice/escrowvault/c;->f:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/kmxservice/escrowvault/c;->g:Landroid/os/Bundle;

    move-object v7, p1

    check-cast v7, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->b(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;ILjava/security/Key;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;)V

    return-void
.end method
