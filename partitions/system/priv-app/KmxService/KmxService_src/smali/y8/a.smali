.class public final synthetic Ly8/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$OnRequestCompleteListener;


# instance fields
.field public final synthetic a:Lcom/samsung/android/kmxservice/escrowvault/server/AuthAgent;

.field public final synthetic b:Ljava/lang/Runnable;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Z

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/kmxservice/escrowvault/server/AuthAgent;Ljava/lang/Runnable;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly8/a;->a:Lcom/samsung/android/kmxservice/escrowvault/server/AuthAgent;

    iput-object p2, p0, Ly8/a;->b:Ljava/lang/Runnable;

    iput-object p3, p0, Ly8/a;->c:Ljava/lang/String;

    iput-boolean p4, p0, Ly8/a;->d:Z

    iput-boolean p5, p0, Ly8/a;->e:Z

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;)V
    .locals 6

    iget-object v0, p0, Ly8/a;->a:Lcom/samsung/android/kmxservice/escrowvault/server/AuthAgent;

    iget-object v1, p0, Ly8/a;->b:Ljava/lang/Runnable;

    iget-object v2, p0, Ly8/a;->c:Ljava/lang/String;

    iget-boolean v3, p0, Ly8/a;->d:Z

    iget-boolean v4, p0, Ly8/a;->e:Z

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/kmxservice/escrowvault/server/AuthAgent;->a(Lcom/samsung/android/kmxservice/escrowvault/server/AuthAgent;Ljava/lang/Runnable;Ljava/lang/String;ZZLcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;)V

    return-void
.end method
