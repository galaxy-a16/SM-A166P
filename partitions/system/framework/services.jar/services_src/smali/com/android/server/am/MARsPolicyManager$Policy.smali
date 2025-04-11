.class public final Lcom/android/server/am/MARsPolicyManager$Policy;
.super Ljava/lang/Object;
.source "MARsPolicyManager.java"


# instance fields
.field public final action:I

.field public enabled:Z

.field public final name:Ljava/lang/String;

.field public final num:I

.field public restriction:I

.field public final synthetic this$0:Lcom/android/server/am/MARsPolicyManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IZIII)V
    .locals 0

    .line 4119
    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager$Policy;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4120
    iput-object p2, p0, Lcom/android/server/am/MARsPolicyManager$Policy;->name:Ljava/lang/String;

    .line 4121
    iput p3, p0, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    .line 4122
    iput-boolean p4, p0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 4124
    iput p6, p0, Lcom/android/server/am/MARsPolicyManager$Policy;->restriction:I

    .line 4125
    iput p7, p0, Lcom/android/server/am/MARsPolicyManager$Policy;->action:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 4129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager$Policy;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
