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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    return-void
.end method


# virtual methods
.method public set(IIIIII)V
    .locals 0

    iput p1, p0, Lcom/android/server/asks/PEMINFO;->MIN:I

    iput p2, p0, Lcom/android/server/asks/PEMINFO;->MAX:I

    iput p3, p0, Lcom/android/server/asks/PEMINFO;->SA:I

    iput p4, p0, Lcom/android/server/asks/PEMINFO;->policy:I

    iput p5, p0, Lcom/android/server/asks/PEMINFO;->policyTarget:I

    iput p6, p0, Lcom/android/server/asks/PEMINFO;->reportedTarget:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    return-void
.end method

.method public setMoreRules(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/asks/MORERULES;

    invoke-direct {v0}, Lcom/android/server/asks/MORERULES;-><init>()V

    iput-object v0, p0, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    :cond_0
    iget-object p0, p0, Lcom/android/server/asks/PEMINFO;->moreRules:Lcom/android/server/asks/MORERULES;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/asks/MORERULES;->set(Ljava/lang/String;I)V

    return-void
.end method
