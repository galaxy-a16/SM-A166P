.class public final synthetic Lcom/samsung/android/kmxservice/escrowvault/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:[B

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:[B

.field public final synthetic g:[B

.field public final synthetic h:Landroid/os/Bundle;

.field public final synthetic i:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;[B[BLandroid/os/Bundle;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/c0;->a:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/c0;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/kmxservice/escrowvault/c0;->c:[B

    iput-object p4, p0, Lcom/samsung/android/kmxservice/escrowvault/c0;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/kmxservice/escrowvault/c0;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/kmxservice/escrowvault/c0;->f:[B

    iput-object p7, p0, Lcom/samsung/android/kmxservice/escrowvault/c0;->g:[B

    iput-object p8, p0, Lcom/samsung/android/kmxservice/escrowvault/c0;->h:Landroid/os/Bundle;

    iput-object p9, p0, Lcom/samsung/android/kmxservice/escrowvault/c0;->i:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/c0;->a:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;

    iget-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/c0;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/kmxservice/escrowvault/c0;->c:[B

    iget-object v3, p0, Lcom/samsung/android/kmxservice/escrowvault/c0;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/kmxservice/escrowvault/c0;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/kmxservice/escrowvault/c0;->f:[B

    iget-object v6, p0, Lcom/samsung/android/kmxservice/escrowvault/c0;->g:[B

    iget-object v7, p0, Lcom/samsung/android/kmxservice/escrowvault/c0;->h:Landroid/os/Bundle;

    iget-object v8, p0, Lcom/samsung/android/kmxservice/escrowvault/c0;->i:Ljava/lang/Runnable;

    move-object v9, p1

    check-cast v9, Ljava/security/Key;

    move-object v10, p2

    check-cast v10, [B

    invoke-static/range {v0 .. v10}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->Z(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;[B[BLandroid/os/Bundle;Ljava/lang/Runnable;Ljava/security/Key;[B)V

    return-void
.end method
