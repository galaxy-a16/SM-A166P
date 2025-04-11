.class public final synthetic Lcom/samsung/android/kmxservice/escrowvault/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:[B

.field public final synthetic f:[B

.field public final synthetic g:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/b0;->a:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/b0;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/kmxservice/escrowvault/b0;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/kmxservice/escrowvault/b0;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/kmxservice/escrowvault/b0;->e:[B

    iput-object p6, p0, Lcom/samsung/android/kmxservice/escrowvault/b0;->f:[B

    iput-boolean p7, p0, Lcom/samsung/android/kmxservice/escrowvault/b0;->g:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/b0;->a:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;

    iget-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/b0;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/kmxservice/escrowvault/b0;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/kmxservice/escrowvault/b0;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/kmxservice/escrowvault/b0;->e:[B

    iget-object v5, p0, Lcom/samsung/android/kmxservice/escrowvault/b0;->f:[B

    iget-boolean v6, p0, Lcom/samsung/android/kmxservice/escrowvault/b0;->g:Z

    move-object v7, p1

    check-cast v7, Lcom/samsung/android/kmxservice/escrowvault/data/SrpData;

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->U(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BZLcom/samsung/android/kmxservice/escrowvault/data/SrpData;)V

    return-void
.end method
