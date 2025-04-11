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

    .line 156
    iget p0, p0, Lcom/android/server/asks/PKGINFO;->SA:I

    return p0
.end method

.method public set(IIIIII)V
    .locals 0

    .line 139
    iput p1, p0, Lcom/android/server/asks/PKGINFO;->policy:I

    .line 140
    iput p2, p0, Lcom/android/server/asks/PKGINFO;->isExecuteBlock:I

    .line 141
    iput p3, p0, Lcom/android/server/asks/PKGINFO;->SA:I

    .line 142
    iput p4, p0, Lcom/android/server/asks/PKGINFO;->policyTarget:I

    .line 143
    iput p5, p0, Lcom/android/server/asks/PKGINFO;->reportedTarget:I

    .line 144
    iput p6, p0, Lcom/android/server/asks/PKGINFO;->regexDomain:I

    return-void
.end method
