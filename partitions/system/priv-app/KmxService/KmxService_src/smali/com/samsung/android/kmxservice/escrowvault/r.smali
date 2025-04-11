.class public final synthetic Lcom/samsung/android/kmxservice/escrowvault/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I

.field public final synthetic d:Ljava/util/ArrayList;

.field public final synthetic e:Ljava/util/function/Consumer;

.field public final synthetic f:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/function/Consumer;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/r;->a:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/r;->b:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/kmxservice/escrowvault/r;->c:I

    iput-object p4, p0, Lcom/samsung/android/kmxservice/escrowvault/r;->d:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/samsung/android/kmxservice/escrowvault/r;->e:Ljava/util/function/Consumer;

    iput-boolean p6, p0, Lcom/samsung/android/kmxservice/escrowvault/r;->f:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    iget-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/r;->a:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;

    iget-object v2, p0, Lcom/samsung/android/kmxservice/escrowvault/r;->b:Ljava/lang/String;

    iget v0, p0, Lcom/samsung/android/kmxservice/escrowvault/r;->c:I

    iget-object v4, p0, Lcom/samsung/android/kmxservice/escrowvault/r;->d:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/samsung/android/kmxservice/escrowvault/r;->e:Ljava/util/function/Consumer;

    iget-boolean v6, p0, Lcom/samsung/android/kmxservice/escrowvault/r;->f:Z

    move-object v3, p1

    check-cast v3, Ljava/security/Key;

    move-object v7, p2

    check-cast v7, [B

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->F(ILcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;Ljava/security/Key;Ljava/util/ArrayList;Ljava/util/function/Consumer;Z[B)V

    return-void
.end method
