.class public Lcom/android/server/locales/LocaleManagerBackupHelper$LocalesInfo;
.super Ljava/lang/Object;
.source "LocaleManagerBackupHelper.java"


# instance fields
.field public final mLocales:Ljava/lang/String;

.field public final mSetFromDelegate:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/locales/LocaleManagerBackupHelper$LocalesInfo;->mLocales:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/android/server/locales/LocaleManagerBackupHelper$LocalesInfo;->mSetFromDelegate:Z

    return-void
.end method
