.class public final synthetic Lcom/samsung/android/kmxservice/escrowvault/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;

.field public final synthetic d:[B

.field public final synthetic e:[B

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/m;->a:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;

    iput-object p3, p0, Lcom/samsung/android/kmxservice/escrowvault/m;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/m;->c:Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;

    iput-object p6, p0, Lcom/samsung/android/kmxservice/escrowvault/m;->d:[B

    iput-object p7, p0, Lcom/samsung/android/kmxservice/escrowvault/m;->e:[B

    iput-object p4, p0, Lcom/samsung/android/kmxservice/escrowvault/m;->f:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/kmxservice/escrowvault/m;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/m;->a:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;

    iget-object v2, p0, Lcom/samsung/android/kmxservice/escrowvault/m;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/m;->c:Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;

    iget-object v5, p0, Lcom/samsung/android/kmxservice/escrowvault/m;->d:[B

    iget-object v6, p0, Lcom/samsung/android/kmxservice/escrowvault/m;->e:[B

    iget-object v3, p0, Lcom/samsung/android/kmxservice/escrowvault/m;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/kmxservice/escrowvault/m;->g:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->D(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    return-void
.end method
