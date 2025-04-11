.class public final synthetic Lcom/samsung/android/kmxservice/escrowvault/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;

.field public final synthetic b:Landroid/os/Bundle;

.field public final synthetic c:[B

.field public final synthetic d:[B

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:[B

.field public final synthetic g:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Landroid/os/Bundle;[B[BLjava/lang/String;[BLjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/e;->a:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/e;->b:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/samsung/android/kmxservice/escrowvault/e;->c:[B

    iput-object p4, p0, Lcom/samsung/android/kmxservice/escrowvault/e;->d:[B

    iput-object p5, p0, Lcom/samsung/android/kmxservice/escrowvault/e;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/kmxservice/escrowvault/e;->f:[B

    iput-object p7, p0, Lcom/samsung/android/kmxservice/escrowvault/e;->g:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/e;->a:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;

    iget-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/e;->b:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/samsung/android/kmxservice/escrowvault/e;->c:[B

    iget-object v3, p0, Lcom/samsung/android/kmxservice/escrowvault/e;->d:[B

    iget-object v4, p0, Lcom/samsung/android/kmxservice/escrowvault/e;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/kmxservice/escrowvault/e;->f:[B

    iget-object v6, p0, Lcom/samsung/android/kmxservice/escrowvault/e;->g:Ljava/lang/Runnable;

    move-object v7, p1

    check-cast v7, Lcom/samsung/android/kmxservice/escrowvault/data/SrpData;

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->c(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Landroid/os/Bundle;[B[BLjava/lang/String;[BLjava/lang/Runnable;Lcom/samsung/android/kmxservice/escrowvault/data/SrpData;)V

    return-void
.end method
