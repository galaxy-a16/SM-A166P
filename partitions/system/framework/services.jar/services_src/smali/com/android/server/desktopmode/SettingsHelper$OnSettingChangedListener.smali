.class public abstract Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;
.super Ljava/lang/Object;
.source "SettingsHelper.java"


# instance fields
.field public final mInterestedKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 533
    iput-object p1, p0, Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;->mInterestedKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract onSettingChanged(Ljava/lang/String;I)V
.end method
