.class public final Lcom/android/server/appop/AppOpsService$ChangeRec;
.super Ljava/lang/Object;
.source "AppOpsService.java"


# instance fields
.field public final op:I

.field public final pkg:Ljava/lang/String;

.field public final previous_mode:I

.field public final uid:I


# direct methods
.method public constructor <init>(IILjava/lang/String;I)V
    .locals 0

    .line 2115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2116
    iput p1, p0, Lcom/android/server/appop/AppOpsService$ChangeRec;->op:I

    .line 2117
    iput p2, p0, Lcom/android/server/appop/AppOpsService$ChangeRec;->uid:I

    .line 2118
    iput-object p3, p0, Lcom/android/server/appop/AppOpsService$ChangeRec;->pkg:Ljava/lang/String;

    .line 2119
    iput p4, p0, Lcom/android/server/appop/AppOpsService$ChangeRec;->previous_mode:I

    return-void
.end method
