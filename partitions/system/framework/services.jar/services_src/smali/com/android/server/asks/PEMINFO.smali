.class public Lcom/android/server/asks/PEMINFO;
.super Ljava/lang/Object;
.source "UnknownStore.java"


# instance fields
.field public MAX:I

.field public MIN:I

.field public SA:I

.field public moreRules:Lcom/android/server/asks/MORERULES;

.field public policy:I

.field public policyTarget:I

.field public reportedTarget:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    return-void
.end method


# virtual methods
.method public set(IIIIII)V
    .locals 0

    .line 116
    iput p1, p0, Lcom/android/server/asks/PEMINFO;->MIN:I

    .line 117
    iput p2, p0, Lcom/android/server/asks/PEMINFO;->MAX:I

    .line 118
    iput p3, p0, Lcom/android/server/asks/PEMINFO;->SA:I

    .line 119
    iput p4, p0, Lcom/android/server/asks/PEMINFO;->policy:I

    .line 120
    iput p5, p0, Lcom/android/server/asks/PEMINFO;->policyTarget:I

    .line 121
    iput p6, p0, Lcom/android/server/asks/PEMINFO;->reportedTarget:I

    const/4 p1, 0x0

    .line 122
    iput-object p1, p0, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    return-void
.end method

.method public setMoreRules(Ljava/lang/String;I)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lcom/android/server/asks/MORERULES;

    invoke-direct {v0}, Lcom/android/server/asks/MORERULES;-><init>()V

    iput-object v0, p0, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    .line 108
    :cond_0
    iget-object p0, p0, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/asks/MORERULES;->set(Ljava/lang/String;I)V

    return-void
.end method
