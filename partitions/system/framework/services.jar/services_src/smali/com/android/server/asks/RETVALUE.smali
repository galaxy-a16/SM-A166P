.class public Lcom/android/server/asks/RETVALUE;
.super Ljava/lang/Object;
.source "UnknownStore.java"


# instance fields
.field public SA:I

.field public isExecute:I

.field public policy:I

.field public policyTarget:I

.field public reportedTarget:I

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public set(IIIIII)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/android/server/asks/RETVALUE;->status:I

    .line 27
    iput p2, p0, Lcom/android/server/asks/RETVALUE;->policy:I

    .line 28
    iput p3, p0, Lcom/android/server/asks/RETVALUE;->SA:I

    .line 29
    iput p4, p0, Lcom/android/server/asks/RETVALUE;->isExecute:I

    .line 30
    iput p5, p0, Lcom/android/server/asks/RETVALUE;->policyTarget:I

    .line 31
    iput p6, p0, Lcom/android/server/asks/RETVALUE;->reportedTarget:I

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/android/server/asks/RETVALUE;->status:I

    return-void
.end method
