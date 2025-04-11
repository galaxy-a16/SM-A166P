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

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mLabel:I

    const/4 v1, 0x0

    .line 48
    iput-object v1, p0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mCoercedLabel:Ljava/lang/CharSequence;

    .line 49
    iput v0, p0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mIcon:I

    .line 50
    iput-boolean v0, p0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mEnabled:Z

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mCandidates:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public getCoercedLabel()Ljava/lang/CharSequence;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mCoercedLabel:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getEnabled()Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mEnabled:Z

    return p0
.end method

.method public getIconRes()I
    .locals 0

    .line 82
    iget p0, p0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mIcon:I

    return p0
.end method

.method public getLabelRes()I
    .locals 0

    .line 74
    iget p0, p0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mLabel:I

    return p0
.end method

.method public hasCoercedLabel()Z
    .locals 1

    .line 94
    iget-object p0, p0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mCandidates:Ljava/util/Set;

    sget-object v0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->COERCED_LABEL:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hasEnabled()Z
    .locals 1

    .line 102
    iget-object p0, p0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mCandidates:Ljava/util/Set;

    sget-object v0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->ENABLED:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hasIcon()Z
    .locals 1

    .line 98
    iget-object p0, p0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mCandidates:Ljava/util/Set;

    sget-object v0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->ICON:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hasLabel()Z
    .locals 1

    .line 90
    iget-object p0, p0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mCandidates:Ljava/util/Set;

    sget-object v0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->LABEL:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public setCoercedLabel(Ljava/lang/CharSequence;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mCoercedLabel:Ljava/lang/CharSequence;

    .line 60
    iget-object p0, p0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mCandidates:Ljava/util/Set;

    sget-object p1, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->COERCED_LABEL:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mEnabled:Z

    .line 70
    iget-object p0, p0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mCandidates:Ljava/util/Set;

    sget-object p1, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->ENABLED:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setIconRes(I)V
    .locals 0

    .line 64
    iput p1, p0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mIcon:I

    .line 65
    iget-object p0, p0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mCandidates:Ljava/util/Set;

    sget-object p1, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->ICON:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setLabelRes(I)V
    .locals 0

    .line 54
    iput p1, p0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mLabel:I

    .line 55
    iget-object p0, p0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mCandidates:Ljava/util/Set;

    sget-object p1, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->LABEL:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
