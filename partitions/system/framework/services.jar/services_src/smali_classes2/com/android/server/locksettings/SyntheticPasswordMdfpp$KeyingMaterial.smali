.class public Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;
.super Ljava/lang/Object;
.source "SyntheticPasswordMdfpp.java"


# static fields
.field public static final NULL:Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;


# instance fields
.field public pivot:[B

.field public pivotSafe:Z

.field public secureMode:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 62
    new-instance v0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;-><init>([BI)V

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->NULL:Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->pivot:[B

    const/4 p1, 0x0

    .line 75
    iput-boolean p1, p0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->pivotSafe:Z

    .line 76
    iput p2, p0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->secureMode:I

    return-void
.end method

.method public static getNull()Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;
    .locals 1

    .line 126
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->NULL:Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;

    return-object v0
.end method
