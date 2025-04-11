.class public Lcom/android/server/asks/PKGINFO;
.super Ljava/lang/Object;
.source "UnknownStore.java"


# instance fields
.field public SA:I

.field public isExecuteBlock:I

.field public policy:I

.field public policyTarget:I

.field public regexDomain:I

.field public reportedTarget:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSA()I
    .locals 0

    iget p0, p0, Lcom/android/server/asks/PKGINFO;->SA:I

    return p0
.end method

.method public set(IIIIII)V
    .locals 0

    iput p1, p0, Lcom/android/server/asks/PKGINFO;->policy:I

    iput p2, p0, Lcom/android/server/asks/PKGINFO;->isExecuteBlock:I

    iput p3, p0, Lcom/android/server/asks/PKGINFO;->SA:I

    iput p4, p0, Lcom/android/server/asks/PKGINFO;->policyTarget:I

    iput p5, p0, Lcom/android/server/asks/PKGINFO;->reportedTarget:I

    iput p6, p0, Lcom/android/server/asks/PKGINFO;->regexDomain:I

    return-void
.end method
