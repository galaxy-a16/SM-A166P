.class public final synthetic Lcom/samsung/android/kmxservice/escrowvault/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;

.field public final synthetic b:[B

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/s;->a:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;

    iput-object p5, p0, Lcom/samsung/android/kmxservice/escrowvault/s;->b:[B

    iput-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/s;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/kmxservice/escrowvault/s;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/kmxservice/escrowvault/s;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/s;->a:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;

    iget-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/s;->b:[B

    iget-object v2, p0, Lcom/samsung/android/kmxservice/escrowvault/s;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/kmxservice/escrowvault/s;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/kmxservice/escrowvault/s;->e:Ljava/lang/String;

    move-object v5, p1

    check-cast v5, Ljava/security/Key;

    move-object v6, p2

    check-cast v6, [B

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->L(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/security/Key;[B)V

    return-void
.end method
