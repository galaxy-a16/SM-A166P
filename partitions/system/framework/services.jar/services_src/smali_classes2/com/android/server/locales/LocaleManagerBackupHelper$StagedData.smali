.class public Lcom/android/server/locales/LocaleManagerBackupHelper$StagedData;
.super Ljava/lang/Object;
.source "LocaleManagerBackupHelper.java"


# instance fields
.field public final mCreationTimeMillis:J

.field public final mPackageStates:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(JLjava/util/HashMap;)V
    .locals 0

    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 453
    iput-wide p1, p0, Lcom/android/server/locales/LocaleManagerBackupHelper$StagedData;->mCreationTimeMillis:J

    .line 454
    iput-object p3, p0, Lcom/android/server/locales/LocaleManagerBackupHelper$StagedData;->mPackageStates:Ljava/util/HashMap;

    return-void
.end method
