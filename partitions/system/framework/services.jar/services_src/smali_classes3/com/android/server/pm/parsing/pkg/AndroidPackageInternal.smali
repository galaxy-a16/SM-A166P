.class public interface abstract Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;
.super Ljava/lang/Object;
.source "AndroidPackageInternal.java"

# interfaces
.implements Lcom/android/server/pm/pkg/AndroidPackage;
.implements Lcom/android/internal/content/om/OverlayConfig$PackageProvider$Package;


# virtual methods
.method public abstract getUsesLibrariesSorted()[Ljava/lang/String;
.end method

.method public abstract getUsesOptionalLibrariesSorted()[Ljava/lang/String;
.end method

.method public abstract getUsesSdkLibrariesSorted()[Ljava/lang/String;
.end method

.method public abstract getUsesStaticLibrariesSorted()[Ljava/lang/String;
.end method
