.class public Lcom/android/server/chimera/SystemRepository$CameraProcInfo;
.super Ljava/lang/Object;
.source "SystemRepository.java"


# instance fields
.field public closeRss:J

.field public name:Ljava/lang/String;

.field public openRss:J

.field public pid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/chimera/SystemRepository$CameraProcInfo;->name:Ljava/lang/String;

    return-void
.end method
