.class public final synthetic Lcom/samsung/android/kmxservice/escrowvault/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:[B

.field public final synthetic d:[B

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/p;->a:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/p;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/kmxservice/escrowvault/p;->c:[B

    iput-object p6, p0, Lcom/samsung/android/kmxservice/escrowvault/p;->d:[B

    iput-object p3, p0, Lcom/samsung/android/kmxservice/escrowvault/p;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/kmxservice/escrowvault/p;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/p;->a:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;

    iget-object v2, p0, Lcom/samsung/android/kmxservice/escrowvault/p;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/kmxservice/escrowvault/p;->c:[B

    iget-object v6, p0, Lcom/samsung/android/kmxservice/escrowvault/p;->d:[B

    iget-object v3, p0, Lcom/samsung/android/kmxservice/escrowvault/p;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/kmxservice/escrowvault/p;->f:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->B(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Lcom/samsung/android/kmxservice/escrowvault/data/VerifierInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    return-void
.end method
