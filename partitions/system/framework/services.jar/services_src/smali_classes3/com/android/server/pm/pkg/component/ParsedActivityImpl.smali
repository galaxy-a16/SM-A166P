.class public Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
.super Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;
.source "ParsedActivityImpl.java"

# interfaces
.implements Lcom/android/server/pm/pkg/component/ParsedActivity;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public colorMode:I

.field public configChanges:I

.field public documentLaunchMode:I

.field public launchMode:I

.field public lockTaskLaunchMode:I

.field public mKnownActivityEmbeddingCerts:Ljava/util/Set;

.field public mRequiredDisplayCategory:Ljava/lang/String;

.field public maxAspectRatio:F

.field public maxRecents:I

.field public minAspectRatio:F

.field public parentActivityName:Ljava/lang/String;

.field public permission:Ljava/lang/String;

.field public persistableMode:I

.field public privateFlags:I

.field public requestedVrComponent:Ljava/lang/String;

.field public resizeMode:I

.field public rotationAnimation:I

.field public screenOrientation:I

.field public softInputMode:I

.field public supportsSizeChanges:Z

.field public targetActivity:Ljava/lang/String;

.field public taskAffinity:Ljava/lang/String;

.field public theme:I

.field public uiOptions:I

.field public windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 363
    new-instance v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl$1;

    invoke-direct {v0}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 327
    invoke-direct {p0}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;-><init>()V

    const/4 v0, -0x1

    .line 83
    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->screenOrientation:I

    const/4 v1, 0x2

    .line 84
    iput v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->resizeMode:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 86
    iput v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxAspectRatio:F

    .line 87
    iput v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->minAspectRatio:F

    .line 93
    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->rotationAnimation:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 331
    invoke-direct {p0, p1}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;-><init>(Landroid/os/Parcel;)V

    const/4 v0, -0x1

    .line 83
    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->screenOrientation:I

    const/4 v1, 0x2

    .line 84
    iput v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->resizeMode:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 86
    iput v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxAspectRatio:F

    .line 87
    iput v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->minAspectRatio:F

    .line 93
    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->rotationAnimation:I

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->theme:I

    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->uiOptions:I

    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->targetActivity:Ljava/lang/String;

    .line 335
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->parentActivityName:Ljava/lang/String;

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->taskAffinity:Ljava/lang/String;

    .line 337
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->privateFlags:I

    .line 338
    sget-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->permission:Ljava/lang/String;

    .line 339
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->launchMode:I

    .line 340
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->documentLaunchMode:I

    .line 341
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxRecents:I

    .line 342
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->configChanges:I

    .line 343
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->softInputMode:I

    .line 344
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->persistableMode:I

    .line 345
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->lockTaskLaunchMode:I

    .line 346
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->screenOrientation:I

    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->resizeMode:I

    .line 348
    const-class v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxAspectRatio:F

    .line 349
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->minAspectRatio:F

    .line 350
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->supportsSizeChanges:Z

    .line 351
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->requestedVrComponent:Ljava/lang/String;

    .line 352
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->rotationAnimation:I

    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->colorMode:I

    .line 354
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setMetaData(Landroid/os/Bundle;)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    .line 355
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    new-instance v0, Landroid/content/pm/ActivityInfo$WindowLayout;

    invoke-direct {v0, p1}, Landroid/content/pm/ActivityInfo$WindowLayout;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 358
    :cond_0
    sget-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->unparcel(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    .line 359
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->mRequiredDisplayCategory:Ljava/lang/String;

    return-void
.end method

.method public static makeAlias(Ljava/lang/String;Lcom/android/server/pm/pkg/component/ParsedActivity;)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .locals 2

    .line 166
    new-instance v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    invoke-direct {v0}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;-><init>()V

    .line 167
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setPackageName(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v0, p0}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setTargetActivity(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    .line 169
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getConfigChanges()I

    move-result p0

    iput p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->configChanges:I

    .line 170
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getFlags()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setFlags(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    .line 171
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getPrivateFlags()I

    move-result p0

    iput p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->privateFlags:I

    .line 172
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getIcon()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setIcon(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    .line 173
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getLogo()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setLogo(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    .line 174
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getBanner()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setBanner(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    .line 175
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getLabelRes()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setLabelRes(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    .line 176
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setNonLocalizedLabel(Ljava/lang/CharSequence;)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    .line 177
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getLaunchMode()I

    move-result p0

    iput p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->launchMode:I

    .line 178
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getLockTaskLaunchMode()I

    move-result p0

    iput p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->lockTaskLaunchMode:I

    .line 179
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getDocumentLaunchMode()I

    move-result p0

    iput p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->documentLaunchMode:I

    .line 180
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getDescriptionRes()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setDescriptionRes(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    .line 181
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getScreenOrientation()I

    move-result p0

    iput p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->screenOrientation:I

    .line 182
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getTaskAffinity()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->taskAffinity:Ljava/lang/String;

    .line 183
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getTheme()I

    move-result p0

    iput p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->theme:I

    .line 184
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getSoftInputMode()I

    move-result p0

    iput p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->softInputMode:I

    .line 185
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getUiOptions()I

    move-result p0

    iput p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->uiOptions:I

    .line 186
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getParentActivityName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->parentActivityName:Ljava/lang/String;

    .line 187
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getMaxRecents()I

    move-result p0

    iput p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxRecents:I

    .line 188
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getWindowLayout()Landroid/content/pm/ActivityInfo$WindowLayout;

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 189
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getResizeMode()I

    move-result p0

    iput p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->resizeMode:I

    .line 190
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getMaxAspectRatio()F

    move-result p0

    iput p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxAspectRatio:F

    .line 191
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getMinAspectRatio()F

    move-result p0

    iput p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->minAspectRatio:F

    .line 192
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->isSupportsSizeChanges()Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->supportsSizeChanges:Z

    .line 193
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getRequestedVrComponent()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->requestedVrComponent:Ljava/lang/String;

    .line 194
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->isDirectBootAware()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->setDirectBootAware(Z)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;

    .line 195
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getProcessName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->setProcessName(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;

    .line 196
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getRequiredDisplayCategory()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setRequiredDisplayCategory(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    return-object v0
.end method

.method public static makeAppDetailsActivity(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .locals 2

    .line 138
    new-instance v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    invoke-direct {v0}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;-><init>()V

    .line 139
    invoke-virtual {v0, p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setPackageName(Ljava/lang/String;)V

    const p0, 0x1030055

    .line 140
    iput p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->theme:I

    const/4 p0, 0x1

    .line 141
    invoke-virtual {v0, p0}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->setExported(Z)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;

    .line 142
    sget-object v1, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setName(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    .line 143
    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->setProcessName(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;

    .line 144
    iput p2, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->uiOptions:I

    .line 145
    iput-object p3, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->taskAffinity:Ljava/lang/String;

    const/4 p1, 0x0

    .line 146
    iput p1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->launchMode:I

    .line 147
    iput p1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->documentLaunchMode:I

    .line 148
    invoke-static {}, Landroid/app/ActivityTaskManager;->getDefaultAppRecentsLimitStatic()I

    move-result p2

    iput p2, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxRecents:I

    .line 149
    invoke-static {p1, p1}, Lcom/android/server/pm/pkg/component/ParsedActivityUtils;->getActivityConfigChanges(II)I

    move-result p2

    iput p2, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->configChanges:I

    .line 150
    iput p1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->softInputMode:I

    .line 151
    iput p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->persistableMode:I

    const/4 p0, -0x1

    .line 152
    iput p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->screenOrientation:I

    const/4 p2, 0x4

    .line 153
    iput p2, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->resizeMode:I

    .line 154
    iput p1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->lockTaskLaunchMode:I

    .line 155
    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->setDirectBootAware(Z)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;

    .line 156
    iput p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->rotationAnimation:I

    .line 157
    iput p1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->colorMode:I

    if-eqz p4, :cond_0

    .line 159
    invoke-virtual {v0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getFlags()I

    move-result p0

    or-int/lit16 p0, p0, 0x200

    invoke-virtual {v0, p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setFlags(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getColorMode()I
    .locals 0

    .line 554
    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->colorMode:I

    return p0
.end method

.method public getConfigChanges()I
    .locals 0

    .line 499
    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->configChanges:I

    return p0
.end method

.method public getDocumentLaunchMode()I
    .locals 0

    .line 489
    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->documentLaunchMode:I

    return p0
.end method

.method public getKnownActivityEmbeddingCerts()Ljava/util/Set;
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getLaunchMode()I
    .locals 0

    .line 484
    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->launchMode:I

    return p0
.end method

.method public getLockTaskLaunchMode()I
    .locals 0

    .line 514
    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->lockTaskLaunchMode:I

    return p0
.end method

.method public getMaxAspectRatio()F
    .locals 0

    .line 529
    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxAspectRatio:F

    return p0
.end method

.method public getMaxRecents()I
    .locals 0

    .line 494
    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxRecents:I

    return p0
.end method

.method public getMinAspectRatio()F
    .locals 0

    .line 534
    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->minAspectRatio:F

    return p0
.end method

.method public getParentActivityName()Ljava/lang/String;
    .locals 0

    .line 464
    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->parentActivityName:Ljava/lang/String;

    return-object p0
.end method

.method public getPermission()Ljava/lang/String;
    .locals 0

    .line 479
    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->permission:Ljava/lang/String;

    return-object p0
.end method

.method public getPersistableMode()I
    .locals 0

    .line 509
    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->persistableMode:I

    return p0
.end method

.method public getPrivateFlags()I
    .locals 0

    .line 474
    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->privateFlags:I

    return p0
.end method

.method public getRequestedVrComponent()Ljava/lang/String;
    .locals 0

    .line 544
    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->requestedVrComponent:Ljava/lang/String;

    return-object p0
.end method

.method public getRequiredDisplayCategory()Ljava/lang/String;
    .locals 0

    .line 564
    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->mRequiredDisplayCategory:Ljava/lang/String;

    return-object p0
.end method

.method public getResizeMode()I
    .locals 0

    .line 524
    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->resizeMode:I

    return p0
.end method

.method public getRotationAnimation()I
    .locals 0

    .line 549
    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->rotationAnimation:I

    return p0
.end method

.method public getScreenOrientation()I
    .locals 0

    .line 519
    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->screenOrientation:I

    return p0
.end method

.method public getSoftInputMode()I
    .locals 0

    .line 504
    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->softInputMode:I

    return p0
.end method

.method public getTargetActivity()Ljava/lang/String;
    .locals 0

    .line 459
    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->targetActivity:Ljava/lang/String;

    return-object p0
.end method

.method public getTaskAffinity()Ljava/lang/String;
    .locals 0

    .line 469
    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->taskAffinity:Ljava/lang/String;

    return-object p0
.end method

.method public getTheme()I
    .locals 0

    .line 449
    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->theme:I

    return p0
.end method

.method public getUiOptions()I
    .locals 0

    .line 454
    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->uiOptions:I

    return p0
.end method

.method public getWindowLayout()Landroid/content/pm/ActivityInfo$WindowLayout;
    .locals 0

    .line 559
    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    return-object p0
.end method

.method public isSupportsSizeChanges()Z
    .locals 0

    .line 539
    iget-boolean p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->supportsSizeChanges:Z

    return p0
.end method

.method public setColorMode(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .locals 0

    .line 683
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->colorMode:I

    return-object p0
.end method

.method public setConfigChanges(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .locals 0

    .line 617
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->configChanges:I

    return-object p0
.end method

.method public setDocumentLaunchMode(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .locals 0

    .line 605
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->documentLaunchMode:I

    return-object p0
.end method

.method public setKnownActivityEmbeddingCerts(Ljava/util/Set;)V
    .locals 3

    .line 269
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    .line 270
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 271
    iget-object v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLaunchMode(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .locals 0

    .line 599
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->launchMode:I

    return-object p0
.end method

.method public setLockTaskLaunchMode(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .locals 0

    .line 635
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->lockTaskLaunchMode:I

    return-object p0
.end method

.method public setMaxAspectRatio(IF)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p1, p2, p1

    if-gez p1, :cond_1

    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    if-eqz p1, :cond_1

    return-object p0

    .line 225
    :cond_1
    iput p2, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxAspectRatio:F

    :cond_2
    :goto_0
    return-object p0
.end method

.method public setMaxRecents(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .locals 0

    .line 611
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxRecents:I

    return-object p0
.end method

.method public setMinAspectRatio(IF)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p1, p2, p1

    if-gez p1, :cond_1

    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    if-eqz p1, :cond_1

    return-object p0

    .line 241
    :cond_1
    iput p2, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->minAspectRatio:F

    :cond_2
    :goto_0
    return-object p0
.end method

.method public setParentActivityName(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .locals 0

    .line 581
    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->parentActivityName:Ljava/lang/String;

    return-object p0
.end method

.method public setPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .locals 1

    .line 252
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->permission:Ljava/lang/String;

    return-object p0
.end method

.method public setPersistableMode(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .locals 0

    .line 629
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->persistableMode:I

    return-object p0
.end method

.method public setPrivateFlags(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .locals 0

    .line 593
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->privateFlags:I

    return-object p0
.end method

.method public setRequestedVrComponent(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .locals 0

    .line 671
    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->requestedVrComponent:Ljava/lang/String;

    return-object p0
.end method

.method public setRequiredDisplayCategory(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .locals 0

    .line 695
    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->mRequiredDisplayCategory:Ljava/lang/String;

    return-object p0
.end method

.method public setResizeMode(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .locals 0

    .line 647
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->resizeMode:I

    return-object p0
.end method

.method public setRotationAnimation(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .locals 0

    .line 677
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->rotationAnimation:I

    return-object p0
.end method

.method public setScreenOrientation(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .locals 0

    .line 641
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->screenOrientation:I

    return-object p0
.end method

.method public setSoftInputMode(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .locals 0

    .line 623
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->softInputMode:I

    return-object p0
.end method

.method public setSupportsSizeChanges(Z)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .locals 0

    .line 665
    iput-boolean p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->supportsSizeChanges:Z

    return-object p0
.end method

.method public setTargetActivity(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .locals 0

    .line 246
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->targetActivity:Ljava/lang/String;

    return-object p0
.end method

.method public setTaskAffinity(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .locals 0

    .line 587
    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->taskAffinity:Ljava/lang/String;

    return-object p0
.end method

.method public setTheme(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .locals 0

    .line 569
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->theme:I

    return-object p0
.end method

.method public setUiOptions(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .locals 0

    .line 575
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->uiOptions:I

    return-object p0
.end method

.method public setWindowLayout(Landroid/content/pm/ActivityInfo$WindowLayout;)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .locals 0

    .line 689
    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Activity{"

    .line 277
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 279
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Landroid/content/ComponentName;->appendShortString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x7d

    .line 281
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 292
    invoke-super {p0, p1, p2}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 293
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->theme:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->uiOptions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    iget-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->targetActivity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->parentActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->taskAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 298
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->privateFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    sget-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->permission:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 300
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->launchMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->documentLaunchMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxRecents:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->configChanges:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->softInputMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->persistableMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->lockTaskLaunchMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->screenOrientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->resizeMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxAspectRatio:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 310
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->minAspectRatio:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 311
    iget-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->supportsSizeChanges:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 312
    iget-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->requestedVrComponent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 313
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->rotationAnimation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->colorMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 317
    iget-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 318
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    iget-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    invoke-virtual {v0, p1}, Landroid/content/pm/ActivityInfo$WindowLayout;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 321
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 323
    :goto_0
    sget-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    iget-object v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->parcel(Ljava/util/Set;Landroid/os/Parcel;I)V

    .line 324
    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->mRequiredDisplayCategory:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    return-void
.end method
