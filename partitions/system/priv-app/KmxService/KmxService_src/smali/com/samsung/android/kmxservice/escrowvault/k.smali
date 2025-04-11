.class public final synthetic Lcom/samsung/android/kmxservice/escrowvault/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/security/Key;

.field public final synthetic e:[B

.field public final synthetic f:Ljava/lang/Cloneable;

.field public final synthetic g:Ljava/util/function/Consumer;

.field public final synthetic h:Z

.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Landroid/os/Bundle;Ljava/security/Key;[BLjava/lang/String;ILjava/util/function/Consumer;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/kmxservice/escrowvault/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/k;->b:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/k;->f:Ljava/lang/Cloneable;

    iput-object p3, p0, Lcom/samsung/android/kmxservice/escrowvault/k;->d:Ljava/security/Key;

    iput-object p4, p0, Lcom/samsung/android/kmxservice/escrowvault/k;->e:[B

    iput-object p5, p0, Lcom/samsung/android/kmxservice/escrowvault/k;->c:Ljava/lang/String;

    iput p6, p0, Lcom/samsung/android/kmxservice/escrowvault/k;->i:I

    iput-object p7, p0, Lcom/samsung/android/kmxservice/escrowvault/k;->g:Ljava/util/function/Consumer;

    iput-boolean p8, p0, Lcom/samsung/android/kmxservice/escrowvault/k;->h:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;Ljava/security/Key;[BLjava/util/ArrayList;Ljava/util/function/Consumer;ZII)V
    .locals 0

    .line 2
    iput p9, p0, Lcom/samsung/android/kmxservice/escrowvault/k;->a:I

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/k;->b:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/k;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/kmxservice/escrowvault/k;->d:Ljava/security/Key;

    iput-object p4, p0, Lcom/samsung/android/kmxservice/escrowvault/k;->e:[B

    iput-object p5, p0, Lcom/samsung/android/kmxservice/escrowvault/k;->f:Ljava/lang/Cloneable;

    iput-object p6, p0, Lcom/samsung/android/kmxservice/escrowvault/k;->g:Ljava/util/function/Consumer;

    iput-boolean p7, p0, Lcom/samsung/android/kmxservice/escrowvault/k;->h:Z

    iput p8, p0, Lcom/samsung/android/kmxservice/escrowvault/k;->i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 24

    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/kmxservice/escrowvault/k;->a:I

    iget-object v2, v0, Lcom/samsung/android/kmxservice/escrowvault/k;->f:Ljava/lang/Cloneable;

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v4, v0, Lcom/samsung/android/kmxservice/escrowvault/k;->b:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;

    iget-object v5, v0, Lcom/samsung/android/kmxservice/escrowvault/k;->c:Ljava/lang/String;

    iget-object v6, v0, Lcom/samsung/android/kmxservice/escrowvault/k;->d:Ljava/security/Key;

    iget-object v10, v0, Lcom/samsung/android/kmxservice/escrowvault/k;->e:[B

    move-object v7, v2

    check-cast v7, Ljava/util/ArrayList;

    iget-object v8, v0, Lcom/samsung/android/kmxservice/escrowvault/k;->g:Ljava/util/function/Consumer;

    iget-boolean v9, v0, Lcom/samsung/android/kmxservice/escrowvault/k;->h:Z

    iget v3, v0, Lcom/samsung/android/kmxservice/escrowvault/k;->i:I

    invoke-static/range {v3 .. v10}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->R(ILcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;Ljava/security/Key;Ljava/util/ArrayList;Ljava/util/function/Consumer;Z[B)V

    return-void

    :pswitch_1
    iget-object v12, v0, Lcom/samsung/android/kmxservice/escrowvault/k;->b:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;

    iget-object v13, v0, Lcom/samsung/android/kmxservice/escrowvault/k;->c:Ljava/lang/String;

    iget-object v14, v0, Lcom/samsung/android/kmxservice/escrowvault/k;->d:Ljava/security/Key;

    iget-object v1, v0, Lcom/samsung/android/kmxservice/escrowvault/k;->e:[B

    move-object v15, v2

    check-cast v15, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/samsung/android/kmxservice/escrowvault/k;->g:Ljava/util/function/Consumer;

    iget-boolean v3, v0, Lcom/samsung/android/kmxservice/escrowvault/k;->h:Z

    iget v11, v0, Lcom/samsung/android/kmxservice/escrowvault/k;->i:I

    move-object/from16 v16, v2

    move/from16 v17, v3

    move-object/from16 v18, v1

    invoke-static/range {v11 .. v18}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->f0(ILcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Ljava/lang/String;Ljava/security/Key;Ljava/util/ArrayList;Ljava/util/function/Consumer;Z[B)V

    return-void

    :goto_0
    iget-object v1, v0, Lcom/samsung/android/kmxservice/escrowvault/k;->b:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;

    move-object/from16 v17, v2

    check-cast v17, Landroid/os/Bundle;

    iget-object v2, v0, Lcom/samsung/android/kmxservice/escrowvault/k;->d:Ljava/security/Key;

    iget-object v3, v0, Lcom/samsung/android/kmxservice/escrowvault/k;->e:[B

    iget-object v4, v0, Lcom/samsung/android/kmxservice/escrowvault/k;->c:Ljava/lang/String;

    iget v5, v0, Lcom/samsung/android/kmxservice/escrowvault/k;->i:I

    iget-object v6, v0, Lcom/samsung/android/kmxservice/escrowvault/k;->g:Ljava/util/function/Consumer;

    iget-boolean v0, v0, Lcom/samsung/android/kmxservice/escrowvault/k;->h:Z

    move-object/from16 v16, v1

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move/from16 v21, v5

    move-object/from16 v22, v6

    move/from16 v23, v0

    invoke-static/range {v16 .. v23}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;->J(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent$EscrowServiceBinder;Landroid/os/Bundle;Ljava/security/Key;[BLjava/lang/String;ILjava/util/function/Consumer;Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
