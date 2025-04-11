.class public final synthetic Lcom/samsung/android/kmxservice/escrowvault/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/a;->a:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/kmxservice/escrowvault/a;->b:I

    iput p3, p0, Lcom/samsung/android/kmxservice/escrowvault/a;->c:I

    iput-object p4, p0, Lcom/samsung/android/kmxservice/escrowvault/a;->d:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/a;->d:Landroid/os/Bundle;

    check-cast p1, Lcom/samsung/android/kmxservice/sdk/escrowvault/IEvServiceCallback;

    iget-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/a;->a:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/kmxservice/escrowvault/a;->b:I

    iget p0, p0, Lcom/samsung/android/kmxservice/escrowvault/a;->c:I

    invoke-static {v1, v2, p0, v0, p1}, Lcom/samsung/android/kmxservice/escrowvault/EscrowAgent;->c(Ljava/lang/String;IILandroid/os/Bundle;Lcom/samsung/android/kmxservice/sdk/escrowvault/IEvServiceCallback;)V

    return-void
.end method
