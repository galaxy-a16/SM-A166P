.class public Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;
.super Ljava/lang/Object;
.source "LegacyRuntimeManifestParseUtils.java"


# static fields
.field public static COERCED_LABEL:Ljava/lang/String; = "coerced_label"

.field public static ENABLED:Ljava/lang/String; = "enabled"

.field public static ICON:Ljava/lang/String; = "icon"

.field public static LABEL:Ljava/lang/String; = "label"


# instance fields
.field public mCandidates:Ljava/util/Set;

.field public mCoercedLabel:Ljava/lang/CharSequence;

.field public mEnabled:Z

.field public mIcon:I

.field public mLabel:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mLabel:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mCoercedLabel:Ljava/lang/CharSequence;

    iput v0, p0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mIcon:I

    iput-boolean v0, p0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mEnabled:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mCandidates:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public getCoercedLabel()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mCoercedLabel:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mEnabled:Z

    return p0
.end method

.method public getIconRes()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mIcon:I

    return p0
.end method

.method public getLabelRes()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mLabel:I

    return p0
.end method

.method public hasCoercedLabel()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mCandidates:Ljava/util/Set;

    sget-object v0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->COERCED_LABEL:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hasEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mCandidates:Ljava/util/Set;

    sget-object v0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->ENABLED:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hasIcon()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mCandidates:Ljava/util/Set;

    sget-object v0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->ICON:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hasLabel()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mCandidates:Ljava/util/Set;

    sget-object v0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->LABEL:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public setCoercedLabel(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mCoercedLabel:Ljava/lang/CharSequence;

    iget-object p0, p0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mCandidates:Ljava/util/Set;

    sget-object p1, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->COERCED_LABEL:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mEnabled:Z

    iget-object p0, p0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mCandidates:Ljava/util/Set;

    sget-object p1, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->ENABLED:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setIconRes(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mIcon:I

    iget-object p0, p0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mCandidates:Ljava/util/Set;

    sget-object p1, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->ICON:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setLabelRes(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mLabel:I

    iget-object p0, p0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mCandidates:Ljava/util/Set;

    sget-object p1, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->LABEL:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
