.class public final synthetic Lcom/samsung/android/kmxservice/escrowvault/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Landroid/util/Pair;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:I

.field public final synthetic i:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/Pair;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/b;->a:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/kmxservice/escrowvault/b;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/kmxservice/escrowvault/b;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/kmxservice/escrowvault/b;->e:Landroid/util/Pair;

    iput-object p6, p0, Lcom/samsung/android/kmxservice/escrowvault/b;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/android/kmxservice/escrowvault/b;->g:Ljava/lang/String;

    iput p8, p0, Lcom/samsung/android/kmxservice/escrowvault/b;->h:I

    iput-object p9, p0, Lcom/samsung/android/kmxservice/escrowvault/b;->i:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/b;->a:Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;

    iget-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/kmxservice/escrowvault/b;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/kmxservice/escrowvault/b;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/kmxservice/escrowvault/b;->e:Landroid/util/Pair;

    iget-object v5, p0, Lcom/samsung/android/kmxservice/escrowvault/b;->f:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/kmxservice/escrowvault/b;->g:Ljava/lang/String;

    iget v7, p0, Lcom/samsung/android/kmxservice/escrowvault/b;->h:I

    iget-object v8, p0, Lcom/samsung/android/kmxservice/escrowvault/b;->i:Landroid/os/Bundle;

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->a(Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/Pair;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    return-void
.end method
