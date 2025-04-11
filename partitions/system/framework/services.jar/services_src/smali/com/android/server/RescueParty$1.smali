.class public Lcom/android/server/RescueParty$1;
.super Ljava/lang/Object;
.source "RescueParty.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$failedPackage:Ljava/lang/String;

.field public final synthetic val$level:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 556
    iput-object p1, p0, Lcom/android/server/RescueParty$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/RescueParty$1;->val$failedPackage:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/RescueParty$1;->val$level:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 562
    :try_start_0
    iget-object v0, p0, Lcom/android/server/RescueParty$1;->val$context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RescueParty by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    iget-object v2, p0, Lcom/android/server/RescueParty$1;->val$failedPackage:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, "PlatformReset"

    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 562
    invoke-static {v0, v1}, Landroid/os/RecoverySystem;->rebootPromptAndWipeAppData(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 566
    iget v1, p0, Lcom/android/server/RescueParty$1;->val$level:I

    iget-object p0, p0, Lcom/android/server/RescueParty$1;->val$failedPackage:Ljava/lang/String;

    invoke-static {v1, p0, v0}, Lcom/android/server/RescueParty;->-$$Nest$smlogRescueException(ILjava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
