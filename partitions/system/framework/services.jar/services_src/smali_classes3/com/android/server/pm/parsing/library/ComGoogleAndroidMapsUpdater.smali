.class public Lcom/android/server/pm/parsing/library/ComGoogleAndroidMapsUpdater;
.super Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;
.source "ComGoogleAndroidMapsUpdater.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;-><init>()V

    return-void
.end method


# virtual methods
.method public updatePackage(Lcom/android/server/pm/parsing/pkg/ParsedPackage;ZZ)V
    .locals 0

    const-string p0, "com.google.android.maps"

    .line 34
    invoke-interface {p1, p0}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->removeUsesLibrary(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 35
    invoke-interface {p1, p0}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    return-void
.end method
