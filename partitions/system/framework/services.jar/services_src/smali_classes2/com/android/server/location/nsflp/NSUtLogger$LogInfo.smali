.class public Lcom/android/server/location/nsflp/NSUtLogger$LogInfo;
.super Ljava/lang/Object;
.source "NSUtLogger.java"


# instance fields
.field public data:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    iput p1, p0, Lcom/android/server/location/nsflp/NSUtLogger$LogInfo;->type:I

    .line 272
    iput-object p2, p0, Lcom/android/server/location/nsflp/NSUtLogger$LogInfo;->path:Ljava/lang/String;

    .line 273
    iput-object p3, p0, Lcom/android/server/location/nsflp/NSUtLogger$LogInfo;->data:Ljava/lang/String;

    return-void
.end method
