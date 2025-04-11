.class public Lcom/android/server/pm/parsing/pkg/PackageImpl;
.super Ljava/lang/Object;
.source "PackageImpl.java"

# interfaces
.implements Lcom/android/server/pm/parsing/pkg/ParsedPackage;
.implements Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;
.implements Lcom/android/server/pm/parsing/pkg/AndroidPackageHidden;
.implements Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.implements Lcom/android/server/pm/pkg/parsing/ParsingPackageHidden;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final EMPTY_INT_ARRAY_SPARSE_ARRAY:Landroid/util/SparseArray;

.field public static final ORDER_COMPARATOR:Ljava/util/Comparator;

.field public static sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

.field public static sForIntentInfoPairs:Lcom/android/server/pm/pkg/parsing/ParsingUtils$StringPairListParceler;

.field public static sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

.field public static sForInternedStringArray:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArray;

.field public static sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

.field public static sForInternedStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

.field public static sForInternedStringValueMap:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;

.field public static sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;


# instance fields
.field public activities:Ljava/util/List;

.field public adoptPermissions:Ljava/util/List;

.field public anyDensity:Ljava/lang/Boolean;

.field public apexSystemServices:Ljava/util/List;

.field public appComponentFactory:Ljava/lang/String;

.field public attributions:Ljava/util/List;

.field public autoRevokePermissions:I

.field public backupAgentName:Ljava/lang/String;

.field public banner:I

.field public baseRevisionCode:I

.field public category:I

.field public classLoaderName:Ljava/lang/String;

.field public className:Ljava/lang/String;

.field public compatibleWidthLimitDp:I

.field public compileSdkVersion:I

.field public compileSdkVersionCodeName:Ljava/lang/String;

.field public configPreferences:Ljava/util/List;

.field public dataExtractionRules:I

.field public descriptionRes:I

.field public featureGroups:Ljava/util/List;

.field public fullBackupContent:I

.field public gwpAsanMode:I

.field public iconRes:I

.field public implicitPermissions:Ljava/util/List;

.field public installLocation:I

.field public instrumentations:Ljava/util/List;

.field public keySetMapping:Ljava/util/Map;

.field public labelRes:I

.field public largestWidthLimitDp:I

.field public libraryNames:Ljava/util/List;

.field public logo:I

.field public mBaseApkPath:Ljava/lang/String;

.field public mBaseAppDataCredentialProtectedDirForSystemUser:Ljava/lang/String;

.field public mBaseAppDataDeviceProtectedDirForSystemUser:Ljava/lang/String;

.field public mBaseAppInfoFlags:I

.field public mBaseAppInfoPrivateFlags:I

.field public mBaseAppInfoPrivateFlagsExt:I

.field public mBooleans:J

.field public mBooleans2:J

.field public mKnownActivityEmbeddingCerts:Ljava/util/Set;

.field public mLocaleConfigRes:I

.field public mLongVersionCode:J

.field public mPath:Ljava/lang/String;

.field public mProperties:Ljava/util/Map;

.field public mSplits:Ljava/util/List;

.field public mStorageUuid:Ljava/util/UUID;

.field public mUsesLibrariesSorted:[Ljava/lang/String;

.field public mUsesOptionalLibrariesSorted:[Ljava/lang/String;

.field public mUsesSdkLibrariesSorted:[Ljava/lang/String;

.field public mUsesStaticLibrariesSorted:[Ljava/lang/String;

.field public manageSpaceActivityName:Ljava/lang/String;

.field public final manifestPackageName:Ljava/lang/String;

.field public maxAspectRatio:F

.field public maxSdkVersion:I

.field public memtagMode:I

.field public metaData:Landroid/os/Bundle;

.field public mimeGroups:Ljava/util/Set;

.field public minAspectRatio:F

.field public minExtensionVersions:Landroid/util/SparseIntArray;

.field public minSdkVersion:I

.field public nativeHeapZeroInitialized:I

.field public nativeLibraryDir:Ljava/lang/String;

.field public nativeLibraryRootDir:Ljava/lang/String;

.field public nativeLibraryRootRequiresIsa:Z

.field public networkSecurityConfigRes:I

.field public nonLocalizedLabel:Ljava/lang/CharSequence;

.field public originalPackages:Ljava/util/List;

.field public overlayCategory:Ljava/lang/String;

.field public overlayPriority:I

.field public overlayTarget:Ljava/lang/String;

.field public overlayTargetOverlayableName:Ljava/lang/String;

.field public overlayables:Ljava/util/Map;

.field public packageName:Ljava/lang/String;

.field public permission:Ljava/lang/String;

.field public permissionGroups:Ljava/util/List;

.field public permissions:Ljava/util/List;

.field public preferredActivityFilters:Ljava/util/List;

.field public primaryCpuAbi:Ljava/lang/String;

.field public processName:Ljava/lang/String;

.field public processes:Ljava/util/Map;

.field public protectedBroadcasts:Ljava/util/List;

.field public providers:Ljava/util/List;

.field public queriesIntents:Ljava/util/List;

.field public queriesPackages:Ljava/util/List;

.field public queriesProviders:Ljava/util/Set;

.field public receivers:Ljava/util/List;

.field public reqFeatures:Ljava/util/List;

.field public requestRawExternalStorageAccess:Ljava/lang/Boolean;

.field public requestedPermissions:Ljava/util/List;

.field public requiredAccountType:Ljava/lang/String;

.field public requiresSmallestWidthDp:I

.field public resizeable:Ljava/lang/Boolean;

.field public resizeableActivity:Ljava/lang/Boolean;

.field public restrictUpdateHash:[B

.field public restrictedAccountType:Ljava/lang/String;

.field public roundIconRes:I

.field public sdkLibVersionMajor:I

.field public sdkLibraryName:Ljava/lang/String;

.field public secondaryCpuAbi:Ljava/lang/String;

.field public secondaryNativeLibraryDir:Ljava/lang/String;

.field public services:Ljava/util/List;

.field public sharedUserId:Ljava/lang/String;

.field public sharedUserLabel:I

.field public signingDetails:Landroid/content/pm/SigningDetails;

.field public splitClassLoaderNames:[Ljava/lang/String;

.field public splitCodePaths:[Ljava/lang/String;

.field public splitDependencies:Landroid/util/SparseArray;

.field public splitFlags:[I

.field public splitNames:[Ljava/lang/String;

.field public splitRevisionCodes:[I

.field public staticSharedLibVersion:J

.field public staticSharedLibraryName:Ljava/lang/String;

.field public supportsExtraLargeScreens:Ljava/lang/Boolean;

.field public supportsLargeScreens:Ljava/lang/Boolean;

.field public supportsNormalScreens:Ljava/lang/Boolean;

.field public supportsSmallScreens:Ljava/lang/Boolean;

.field public targetSandboxVersion:I

.field public targetSdkVersion:I

.field public taskAffinity:Ljava/lang/String;

.field public theme:I

.field public uiOptions:I

.field public uid:I

.field public upgradeKeySets:Ljava/util/Set;

.field public usesLibraries:Ljava/util/List;

.field public usesNativeLibraries:Ljava/util/List;

.field public usesOptionalLibraries:Ljava/util/List;

.field public usesOptionalNativeLibraries:Ljava/util/List;

.field public usesPermissions:Ljava/util/List;

.field public usesSdkLibraries:Ljava/util/List;

.field public usesSdkLibrariesCertDigests:[[Ljava/lang/String;

.field public usesSdkLibrariesVersionsMajor:[J

.field public usesStaticLibraries:Ljava/util/List;

.field public usesStaticLibrariesCertDigests:[[Ljava/lang/String;

.field public usesStaticLibrariesVersions:[J

.field public versionCode:I

.field public versionCodeMajor:I

.field public versionName:Ljava/lang/String;

.field public volumeUuid:Ljava/lang/String;

.field public zygotePreloadName:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$ho9psxkcY95TgnDJ6jSh7II3TuY(Lcom/android/server/pm/pkg/component/ParsedMainComponent;Lcom/android/server/pm/pkg/component/ParsedMainComponent;)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->lambda$static$0(Lcom/android/server/pm/pkg/component/ParsedMainComponent;Lcom/android/server/pm/pkg/component/ParsedMainComponent;)I

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .locals 1

    .line 113
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->EMPTY_INT_ARRAY_SPARSE_ARRAY:Landroid/util/SparseArray;

    .line 114
    new-instance v0, Lcom/android/server/pm/parsing/pkg/PackageImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->ORDER_COMPARATOR:Ljava/util/Comparator;

    .line 116
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    sput-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    .line 118
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    sput-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    .line 120
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArray;

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArray;

    sput-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedStringArray:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArray;

    .line 122
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    sput-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    .line 124
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;

    .line 125
    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;

    sput-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedStringValueMap:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;

    .line 126
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    sput-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    .line 128
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

    .line 129
    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

    sput-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

    .line 130
    new-instance v0, Lcom/android/server/pm/pkg/parsing/ParsingUtils$StringPairListParceler;

    invoke-direct {v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils$StringPairListParceler;-><init>()V

    sput-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForIntentInfoPairs:Lcom/android/server/pm/pkg/parsing/ParsingUtils$StringPairListParceler;

    .line 3375
    new-instance v0, Lcom/android/server/pm/parsing/pkg/PackageImpl$1;

    invoke-direct {v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .line 3209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    .line 144
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesOptionalLibraries:Ljava/util/List;

    .line 147
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesNativeLibraries:Ljava/util/List;

    .line 150
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    .line 153
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->originalPackages:Ljava/util/List;

    .line 156
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->adoptPermissions:Ljava/util/List;

    .line 164
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->requestedPermissions:Ljava/util/List;

    .line 167
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->protectedBroadcasts:Ljava/util/List;

    .line 169
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    .line 171
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->apexSystemServices:Ljava/util/List;

    .line 173
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    .line 175
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    .line 177
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    .line 179
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->permissions:Ljava/util/List;

    .line 181
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->permissionGroups:Ljava/util/List;

    .line 183
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->instrumentations:Ljava/util/List;

    .line 239
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->overlayables:Ljava/util/Map;

    .line 250
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->libraryNames:Ljava/util/List;

    .line 253
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesStaticLibraries:Ljava/util/List;

    .line 260
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesSdkLibraries:Ljava/util/List;

    .line 270
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->configPreferences:Ljava/util/List;

    .line 272
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->reqFeatures:Ljava/util/List;

    .line 274
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->featureGroups:Ljava/util/List;

    .line 278
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesPermissions:Ljava/util/List;

    .line 281
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->implicitPermissions:Ljava/util/List;

    .line 283
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->upgradeKeySets:Ljava/util/Set;

    .line 285
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->keySetMapping:Ljava/util/Map;

    .line 287
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->attributions:Ljava/util/List;

    .line 290
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->preferredActivityFilters:Ljava/util/List;

    .line 295
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->processes:Ljava/util/Map;

    .line 299
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mProperties:Ljava/util/Map;

    .line 300
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->signingDetails:Landroid/content/pm/SigningDetails;

    .line 304
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->queriesIntents:Ljava/util/List;

    .line 307
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->queriesPackages:Ljava/util/List;

    .line 310
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->queriesProviders:Ljava/util/Set;

    const/4 v0, -0x1

    .line 330
    iput v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->category:I

    .line 342
    iput v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->installLocation:I

    const/4 v1, 0x1

    .line 353
    iput v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->minSdkVersion:I

    const v1, 0x7fffffff

    .line 354
    iput v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->maxSdkVersion:I

    const/4 v1, 0x0

    .line 367
    iput v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->targetSdkVersion:I

    .line 394
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mimeGroups:Ljava/util/Set;

    const-wide v2, 0x100000000000L

    .line 398
    iput-wide v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBooleans:J

    .line 401
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    .line 478
    iput v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->uid:I

    .line 3211
    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 3212
    sget-object v2, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->unparcel(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->supportsSmallScreens:Ljava/lang/Boolean;

    .line 3213
    sget-object v2, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->unparcel(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->supportsNormalScreens:Ljava/lang/Boolean;

    .line 3214
    sget-object v2, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->unparcel(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->supportsLargeScreens:Ljava/lang/Boolean;

    .line 3215
    sget-object v2, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->unparcel(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->supportsExtraLargeScreens:Ljava/lang/Boolean;

    .line 3216
    sget-object v2, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->unparcel(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->resizeable:Ljava/lang/Boolean;

    .line 3217
    sget-object v2, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->unparcel(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->anyDensity:Ljava/lang/Boolean;

    .line 3218
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->versionCode:I

    .line 3219
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->versionCodeMajor:I

    .line 3220
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->baseRevisionCode:I

    .line 3221
    sget-object v2, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->versionName:Ljava/lang/String;

    .line 3222
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->compileSdkVersion:I

    .line 3223
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->compileSdkVersionCodeName:Ljava/lang/String;

    .line 3224
    sget-object v2, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    .line 3225
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBaseApkPath:Ljava/lang/String;

    .line 3226
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->restrictedAccountType:Ljava/lang/String;

    .line 3227
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->requiredAccountType:Ljava/lang/String;

    .line 3228
    sget-object v2, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->overlayTarget:Ljava/lang/String;

    .line 3229
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->overlayTargetOverlayableName:Ljava/lang/String;

    .line 3230
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->overlayCategory:Ljava/lang/String;

    .line 3231
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->overlayPriority:I

    .line 3232
    sget-object v2, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedStringValueMap:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;->unparcel(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->overlayables:Ljava/util/Map;

    .line 3233
    sget-object v2, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sdkLibraryName:Ljava/lang/String;

    .line 3234
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sdkLibVersionMajor:I

    .line 3235
    sget-object v2, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->staticSharedLibraryName:Ljava/lang/String;

    .line 3236
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->staticSharedLibVersion:J

    .line 3237
    sget-object v2, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->libraryNames:Ljava/util/List;

    .line 3238
    sget-object v2, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    .line 3239
    sget-object v2, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesOptionalLibraries:Ljava/util/List;

    .line 3240
    sget-object v2, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesNativeLibraries:Ljava/util/List;

    .line 3241
    sget-object v2, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    .line 3243
    sget-object v2, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesStaticLibraries:Ljava/util/List;

    .line 3244
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesStaticLibrariesVersions:[J

    .line 3246
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ltz v2, :cond_0

    .line 3248
    new-array v3, v2, [[Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    .line 3250
    iget-object v4, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    sget-object v5, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedStringArray:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArray;

    invoke-virtual {v5, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArray;->unparcel(Landroid/os/Parcel;)[Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3256
    :cond_0
    sget-object v2, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesSdkLibraries:Ljava/util/List;

    .line 3257
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesVersionsMajor:[J

    .line 3259
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ltz v2, :cond_1

    .line 3261
    new-array v3, v2, [[Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesCertDigests:[[Ljava/lang/String;

    :goto_1
    if-ge v1, v2, :cond_1

    .line 3263
    iget-object v3, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesCertDigests:[[Ljava/lang/String;

    sget-object v4, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedStringArray:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArray;

    invoke-virtual {v4, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArray;->unparcel(Landroid/os/Parcel;)[Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3268
    :cond_1
    sget-object v1, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sharedUserId:Ljava/lang/String;

    .line 3269
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sharedUserLabel:I

    .line 3270
    sget-object v1, Landroid/content/pm/ConfigurationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->configPreferences:Ljava/util/List;

    .line 3271
    sget-object v1, Landroid/content/pm/FeatureInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->reqFeatures:Ljava/util/List;

    .line 3272
    sget-object v1, Landroid/content/pm/FeatureGroupInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->featureGroups:Ljava/util/List;

    .line 3273
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->restrictUpdateHash:[B

    .line 3274
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->originalPackages:Ljava/util/List;

    .line 3275
    sget-object v1, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->adoptPermissions:Ljava/util/List;

    .line 3276
    sget-object v1, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->requestedPermissions:Ljava/util/List;

    .line 3277
    sget-object v1, Lcom/android/server/pm/pkg/component/ParsedUsesPermissionImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v1}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesPermissions:Ljava/util/List;

    .line 3279
    sget-object v1, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->implicitPermissions:Ljava/util/List;

    .line 3280
    sget-object v1, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->unparcel(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->upgradeKeySets:Ljava/util/Set;

    .line 3281
    invoke-static {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->readKeySetMapping(Landroid/os/Parcel;)Landroid/util/ArrayMap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->keySetMapping:Ljava/util/Map;

    .line 3282
    sget-object v1, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->protectedBroadcasts:Ljava/util/List;

    .line 3284
    sget-object v1, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v1}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    .line 3285
    sget-object v2, Lcom/android/server/pm/pkg/component/ParsedApexSystemServiceImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v2}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->apexSystemServices:Ljava/util/List;

    .line 3287
    invoke-static {p1, v1}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    .line 3288
    sget-object v1, Lcom/android/server/pm/pkg/component/ParsedServiceImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v1}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    .line 3289
    sget-object v1, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v1}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    .line 3290
    sget-object v1, Lcom/android/server/pm/pkg/component/ParsedAttributionImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v1}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->attributions:Ljava/util/List;

    .line 3292
    sget-object v1, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v1}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->permissions:Ljava/util/List;

    .line 3293
    sget-object v1, Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v1}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->permissionGroups:Ljava/util/List;

    .line 3295
    sget-object v1, Lcom/android/server/pm/pkg/component/ParsedInstrumentationImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v1}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->instrumentations:Ljava/util/List;

    .line 3297
    sget-object v1, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForIntentInfoPairs:Lcom/android/server/pm/pkg/parsing/ParsingUtils$StringPairListParceler;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingUtils$StringPairListParceler;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->preferredActivityFilters:Ljava/util/List;

    .line 3298
    const-class v1, Lcom/android/server/pm/pkg/component/ParsedProcess;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->processes:Ljava/util/Map;

    .line 3299
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->metaData:Landroid/os/Bundle;

    .line 3300
    sget-object v1, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->volumeUuid:Ljava/lang/String;

    .line 3301
    const-class v1, Landroid/content/pm/SigningDetails;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/SigningDetails;

    iput-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->signingDetails:Landroid/content/pm/SigningDetails;

    .line 3302
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mPath:Ljava/lang/String;

    .line 3303
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->queriesIntents:Ljava/util/List;

    .line 3304
    sget-object v1, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->queriesPackages:Ljava/util/List;

    .line 3305
    sget-object v1, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;->unparcel(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->queriesProviders:Ljava/util/Set;

    .line 3306
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->appComponentFactory:Ljava/lang/String;

    .line 3307
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->backupAgentName:Ljava/lang/String;

    .line 3308
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->banner:I

    .line 3309
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->category:I

    .line 3310
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->classLoaderName:Ljava/lang/String;

    .line 3311
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->className:Ljava/lang/String;

    .line 3312
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->compatibleWidthLimitDp:I

    .line 3313
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->descriptionRes:I

    .line 3314
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->fullBackupContent:I

    .line 3315
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->dataExtractionRules:I

    .line 3316
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->iconRes:I

    .line 3317
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->installLocation:I

    .line 3318
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->labelRes:I

    .line 3319
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->largestWidthLimitDp:I

    .line 3320
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->logo:I

    .line 3321
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->manageSpaceActivityName:Ljava/lang/String;

    .line 3322
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->maxAspectRatio:F

    .line 3323
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->minAspectRatio:F

    .line 3324
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->minSdkVersion:I

    .line 3325
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->maxSdkVersion:I

    .line 3326
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->networkSecurityConfigRes:I

    .line 3327
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 3328
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->permission:Ljava/lang/String;

    .line 3329
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->processName:Ljava/lang/String;

    .line 3330
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->requiresSmallestWidthDp:I

    .line 3331
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->roundIconRes:I

    .line 3332
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->targetSandboxVersion:I

    .line 3333
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->targetSdkVersion:I

    .line 3334
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->taskAffinity:Ljava/lang/String;

    .line 3335
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->theme:I

    .line 3336
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->uiOptions:I

    .line 3337
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->zygotePreloadName:Ljava/lang/String;

    .line 3338
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->splitClassLoaderNames:[Ljava/lang/String;

    .line 3339
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->splitCodePaths:[Ljava/lang/String;

    .line 3340
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readSparseArray(Ljava/lang/ClassLoader;)Landroid/util/SparseArray;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->splitDependencies:Landroid/util/SparseArray;

    .line 3341
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->splitFlags:[I

    .line 3342
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->splitNames:[Ljava/lang/String;

    .line 3343
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->splitRevisionCodes:[I

    .line 3344
    sget-object v1, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->unparcel(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->resizeableActivity:Ljava/lang/Boolean;

    .line 3346
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->autoRevokePermissions:I

    .line 3347
    sget-object v1, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;->unparcel(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mimeGroups:Ljava/util/Set;

    .line 3348
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->gwpAsanMode:I

    .line 3349
    invoke-virtual {p1}, Landroid/os/Parcel;->readSparseIntArray()Landroid/util/SparseIntArray;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->minExtensionVersions:Landroid/util/SparseIntArray;

    .line 3350
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mProperties:Ljava/util/Map;

    .line 3351
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->memtagMode:I

    .line 3352
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeHeapZeroInitialized:I

    .line 3353
    sget-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->unparcel(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->requestRawExternalStorageAccess:Ljava/lang/Boolean;

    .line 3354
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mLocaleConfigRes:I

    .line 3355
    sget-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->unparcel(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    .line 3356
    sget-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->manifestPackageName:Ljava/lang/String;

    .line 3357
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryDir:Ljava/lang/String;

    .line 3358
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryRootDir:Ljava/lang/String;

    .line 3359
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryRootRequiresIsa:Z

    .line 3360
    sget-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->primaryCpuAbi:Ljava/lang/String;

    .line 3361
    sget-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->secondaryCpuAbi:Ljava/lang/String;

    .line 3362
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->secondaryNativeLibraryDir:Ljava/lang/String;

    .line 3363
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->uid:I

    .line 3364
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBooleans:J

    .line 3365
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBooleans2:J

    .line 3367
    invoke-virtual {p0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->assignDerivedFields()V

    .line 3368
    invoke-virtual {p0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->assignDerivedFields2()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;Z)V
    .locals 5

    .line 2660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    .line 144
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesOptionalLibraries:Ljava/util/List;

    .line 147
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesNativeLibraries:Ljava/util/List;

    .line 150
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    .line 153
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->originalPackages:Ljava/util/List;

    .line 156
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->adoptPermissions:Ljava/util/List;

    .line 164
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->requestedPermissions:Ljava/util/List;

    .line 167
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->protectedBroadcasts:Ljava/util/List;

    .line 169
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    .line 171
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->apexSystemServices:Ljava/util/List;

    .line 173
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    .line 175
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    .line 177
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    .line 179
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->permissions:Ljava/util/List;

    .line 181
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->permissionGroups:Ljava/util/List;

    .line 183
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->instrumentations:Ljava/util/List;

    .line 239
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->overlayables:Ljava/util/Map;

    .line 250
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->libraryNames:Ljava/util/List;

    .line 253
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesStaticLibraries:Ljava/util/List;

    .line 260
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesSdkLibraries:Ljava/util/List;

    .line 270
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->configPreferences:Ljava/util/List;

    .line 272
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->reqFeatures:Ljava/util/List;

    .line 274
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->featureGroups:Ljava/util/List;

    .line 278
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesPermissions:Ljava/util/List;

    .line 281
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->implicitPermissions:Ljava/util/List;

    .line 283
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->upgradeKeySets:Ljava/util/Set;

    .line 285
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->keySetMapping:Ljava/util/Map;

    .line 287
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->attributions:Ljava/util/List;

    .line 290
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->preferredActivityFilters:Ljava/util/List;

    .line 295
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->processes:Ljava/util/Map;

    .line 299
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mProperties:Ljava/util/Map;

    .line 300
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->signingDetails:Landroid/content/pm/SigningDetails;

    .line 304
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->queriesIntents:Ljava/util/List;

    .line 307
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->queriesPackages:Ljava/util/List;

    .line 310
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->queriesProviders:Ljava/util/Set;

    const/4 v0, -0x1

    .line 330
    iput v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->category:I

    .line 342
    iput v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->installLocation:I

    const/4 v1, 0x1

    .line 353
    iput v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->minSdkVersion:I

    const v2, 0x7fffffff

    .line 354
    iput v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->maxSdkVersion:I

    const/4 v2, 0x0

    .line 367
    iput v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->targetSdkVersion:I

    .line 394
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mimeGroups:Ljava/util/Set;

    const-wide v3, 0x100000000000L

    .line 398
    iput-wide v3, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBooleans:J

    .line 401
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    .line 478
    iput v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->uid:I

    .line 2661
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    .line 2662
    iput-object p2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBaseApkPath:Ljava/lang/String;

    .line 2663
    iput-object p3, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mPath:Ljava/lang/String;

    if-eqz p4, :cond_0

    .line 2666
    invoke-virtual {p4, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->versionCode:I

    const/16 p1, 0xb

    .line 2667
    invoke-virtual {p4, p1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->versionCodeMajor:I

    const/4 p1, 0x5

    .line 2670
    invoke-virtual {p4, p1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    .line 2669
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBaseRevisionCode(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    const/4 p1, 0x2

    .line 2671
    invoke-virtual {p4, p1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setVersionName(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    const/16 p1, 0x9

    .line 2674
    invoke-virtual {p4, p1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setCompileSdkVersion(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    const/16 p1, 0xa

    .line 2676
    invoke-virtual {p4, p1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setCompileSdkVersionCodeName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    const/4 p1, 0x6

    .line 2679
    invoke-virtual {p4, p1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setIsolatedSplitLoading(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    .line 2683
    :cond_0
    iget-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->manifestPackageName:Ljava/lang/String;

    const-wide/high16 p1, 0x10000000000000L

    .line 2684
    invoke-virtual {p0, p1, p2, p5}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    return-void
.end method

.method public static buildFakeForDeletion(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;
    .locals 0

    .line 435
    invoke-static {p0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->forTesting(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    .line 436
    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setVolumeUuid(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    .line 437
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->hideAsParsed()Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object p0

    .line 438
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->hideAsFinal()Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p0

    return-object p0
.end method

.method public static forParsing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 7

    .line 420
    new-instance v6, Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/parsing/pkg/PackageImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;Z)V

    return-object v6
.end method

.method public static forTesting(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 1

    const-string v0, ""

    .line 444
    invoke-static {p0, v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->forTesting(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    move-result-object p0

    return-object p0
.end method

.method public static forTesting(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 7

    .line 450
    new-instance v6, Lcom/android/server/pm/parsing/pkg/PackageImpl;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/parsing/pkg/PackageImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;Z)V

    return-object v6
.end method

.method public static synthetic lambda$static$0(Lcom/android/server/pm/pkg/component/ParsedMainComponent;Lcom/android/server/pm/pkg/component/ParsedMainComponent;)I
    .locals 0

    .line 115
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getOrder()I

    move-result p1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getOrder()I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method public static sortLibraries(Ljava/util/List;)[Ljava/lang/String;
    .locals 1

    .line 2704
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2706
    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object p0

    .line 2708
    :cond_0
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    .line 2709
    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public addActivity(Lcom/android/server/pm/pkg/component/ParsedActivity;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    .line 487
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->addMimeGroupsFromComponent(Lcom/android/server/pm/pkg/component/ParsedComponent;)V

    return-object p0
.end method

.method public bridge synthetic addActivity(Lcom/android/server/pm/pkg/component/ParsedActivity;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->addActivity(Lcom/android/server/pm/pkg/component/ParsedActivity;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addAdoptPermission(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    .line 493
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->adoptPermissions:Ljava/util/List;

    .line 494
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 493
    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->adoptPermissions:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addAdoptPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->addAdoptPermission(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public final addApexSystemService(Lcom/android/server/pm/pkg/component/ParsedApexSystemService;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->apexSystemServices:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->apexSystemServices:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addApexSystemService(Lcom/android/server/pm/pkg/component/ParsedApexSystemService;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->addApexSystemService(Lcom/android/server/pm/pkg/component/ParsedApexSystemService;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addAttribution(Lcom/android/server/pm/pkg/component/ParsedAttribution;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    .line 508
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->attributions:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->attributions:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addAttribution(Lcom/android/server/pm/pkg/component/ParsedAttribution;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->addAttribution(Lcom/android/server/pm/pkg/component/ParsedAttribution;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addConfigPreference(Landroid/content/pm/ConfigurationInfo;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    .line 514
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->configPreferences:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->configPreferences:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addConfigPreference(Landroid/content/pm/ConfigurationInfo;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->addConfigPreference(Landroid/content/pm/ConfigurationInfo;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addFeatureGroup(Landroid/content/pm/FeatureGroupInfo;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    .line 520
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->featureGroups:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->featureGroups:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addFeatureGroup(Landroid/content/pm/FeatureGroupInfo;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->addFeatureGroup(Landroid/content/pm/FeatureGroupInfo;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addImplicitPermission(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    .line 526
    new-instance v0, Lcom/android/server/pm/pkg/component/ParsedUsesPermissionImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/server/pm/pkg/component/ParsedUsesPermissionImpl;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->addUsesPermission(Lcom/android/server/pm/pkg/component/ParsedUsesPermission;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    .line 527
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->implicitPermissions:Ljava/util/List;

    .line 528
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 527
    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->implicitPermissions:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addImplicitPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->addImplicitPermission(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addInstrumentation(Lcom/android/server/pm/pkg/component/ParsedInstrumentation;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    .line 534
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->instrumentations:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->instrumentations:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addInstrumentation(Lcom/android/server/pm/pkg/component/ParsedInstrumentation;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->addInstrumentation(Lcom/android/server/pm/pkg/component/ParsedInstrumentation;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addKeySet(Ljava/lang/String;Ljava/security/PublicKey;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    .line 540
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->keySetMapping:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    if-nez v0, :cond_0

    .line 542
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 544
    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 545
    iget-object p2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->keySetMapping:Ljava/util/Map;

    invoke-static {p2, p1, v0}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->keySetMapping:Ljava/util/Map;

    return-object p0
.end method

.method public bridge synthetic addKeySet(Ljava/lang/String;Ljava/security/PublicKey;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->addKeySet(Ljava/lang/String;Ljava/security/PublicKey;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addLibraryName(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    .line 551
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->libraryNames:Ljava/util/List;

    .line 552
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 551
    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->libraryNames:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addLibraryName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->addLibraryName(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public final addMimeGroupsFromComponent(Lcom/android/server/pm/pkg/component/ParsedComponent;)V
    .locals 5

    .line 557
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getIntents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 558
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getIntents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    .line 559
    invoke-virtual {v1}, Landroid/content/IntentFilter;->countMimeGroups()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_2

    .line 560
    iget-object v3, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mimeGroups:Ljava/util/Set;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    const/16 v4, 0x1f4

    if-gt v3, v4, :cond_0

    goto :goto_2

    .line 561
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Max limit on number of MIME Groups reached"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 563
    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mimeGroups:Ljava/util/Set;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->getMimeGroup(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mimeGroups:Ljava/util/Set;

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public addOriginalPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    .line 570
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->originalPackages:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->originalPackages:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addOriginalPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->addOriginalPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addOverlayable(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 1

    .line 576
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->overlayables:Ljava/util/Map;

    .line 577
    invoke-static {p2}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 576
    invoke-static {v0, p1, p2}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->overlayables:Ljava/util/Map;

    return-object p0
.end method

.method public addPermission(Lcom/android/server/pm/pkg/component/ParsedPermission;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    .line 583
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->permissions:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->permissions:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addPermission(Lcom/android/server/pm/pkg/component/ParsedPermission;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->addPermission(Lcom/android/server/pm/pkg/component/ParsedPermission;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addPermissionGroup(Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    .line 589
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->permissionGroups:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->permissionGroups:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addPermissionGroup(Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->addPermissionGroup(Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addPreferredActivityFilter(Ljava/lang/String;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    .line 596
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->preferredActivityFilters:Ljava/util/List;

    .line 597
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 596
    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->preferredActivityFilters:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addPreferredActivityFilter(Ljava/lang/String;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->addPreferredActivityFilter(Ljava/lang/String;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addProperty(Landroid/content/pm/PackageManager$Property;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    if-nez p1, :cond_0

    return-object p0

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mProperties:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$Property;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mProperties:Ljava/util/Map;

    return-object p0
.end method

.method public bridge synthetic addProperty(Landroid/content/pm/PackageManager$Property;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->addProperty(Landroid/content/pm/PackageManager$Property;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addProtectedBroadcast(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    .line 612
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->protectedBroadcasts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->protectedBroadcasts:Ljava/util/List;

    .line 614
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 613
    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->protectedBroadcasts:Ljava/util/List;

    :cond_0
    return-object p0
.end method

.method public bridge synthetic addProtectedBroadcast(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->addProtectedBroadcast(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addProvider(Lcom/android/server/pm/pkg/component/ParsedProvider;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    .line 621
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    .line 622
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->addMimeGroupsFromComponent(Lcom/android/server/pm/pkg/component/ParsedComponent;)V

    return-object p0
.end method

.method public bridge synthetic addProvider(Lcom/android/server/pm/pkg/component/ParsedProvider;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->addProvider(Lcom/android/server/pm/pkg/component/ParsedProvider;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addQueriesIntent(Landroid/content/Intent;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    .line 628
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->queriesIntents:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->queriesIntents:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addQueriesIntent(Landroid/content/Intent;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->addQueriesIntent(Landroid/content/Intent;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addQueriesPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    .line 634
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->queriesPackages:Ljava/util/List;

    .line 635
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 634
    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->queriesPackages:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addQueriesPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->addQueriesPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addQueriesProvider(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    .line 641
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->queriesProviders:Ljava/util/Set;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->queriesProviders:Ljava/util/Set;

    return-object p0
.end method

.method public bridge synthetic addQueriesProvider(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->addQueriesProvider(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addReceiver(Lcom/android/server/pm/pkg/component/ParsedActivity;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    .line 647
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    .line 648
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->addMimeGroupsFromComponent(Lcom/android/server/pm/pkg/component/ParsedComponent;)V

    return-object p0
.end method

.method public bridge synthetic addReceiver(Lcom/android/server/pm/pkg/component/ParsedActivity;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->addReceiver(Lcom/android/server/pm/pkg/component/ParsedActivity;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addReqFeature(Landroid/content/pm/FeatureInfo;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    .line 654
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->reqFeatures:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->reqFeatures:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addReqFeature(Landroid/content/pm/FeatureInfo;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->addReqFeature(Landroid/content/pm/FeatureInfo;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addService(Lcom/android/server/pm/pkg/component/ParsedService;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    .line 660
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    .line 661
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->addMimeGroupsFromComponent(Lcom/android/server/pm/pkg/component/ParsedComponent;)V

    return-object p0
.end method

.method public bridge synthetic addService(Lcom/android/server/pm/pkg/component/ParsedService;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->addService(Lcom/android/server/pm/pkg/component/ParsedService;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addUsesLibrary(ILjava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    .line 2787
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    .line 2788
    invoke-static {p2}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2787
    invoke-static {v0, p1, p2}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    return-object p0
.end method

.method public addUsesLibrary(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    .line 667
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    .line 668
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 667
    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addUsesLibrary(ILjava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->addUsesLibrary(ILjava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic addUsesLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->addUsesLibrary(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public final addUsesNativeLibrary(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    .line 674
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesNativeLibraries:Ljava/util/List;

    .line 675
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 674
    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesNativeLibraries:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addUsesNativeLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->addUsesNativeLibrary(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addUsesOptionalLibrary(ILjava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    .line 2780
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesOptionalLibraries:Ljava/util/List;

    .line 2781
    invoke-static {p2}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2780
    invoke-static {v0, p1, p2}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesOptionalLibraries:Ljava/util/List;

    return-object p0
.end method

.method public addUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    .line 681
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesOptionalLibraries:Ljava/util/List;

    .line 682
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 681
    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesOptionalLibraries:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addUsesOptionalLibrary(ILjava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->addUsesOptionalLibrary(ILjava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic addUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->addUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public final addUsesOptionalNativeLibrary(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    .line 688
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    .line 689
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 688
    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addUsesOptionalNativeLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->addUsesOptionalNativeLibrary(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addUsesPermission(Lcom/android/server/pm/pkg/component/ParsedUsesPermission;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    .line 695
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesPermissions:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesPermissions:Ljava/util/List;

    .line 699
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->requestedPermissions:Ljava/util/List;

    .line 700
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedUsesPermission;->getName()Ljava/lang/String;

    move-result-object p1

    .line 699
    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->requestedPermissions:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addUsesPermission(Lcom/android/server/pm/pkg/component/ParsedUsesPermission;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->addUsesPermission(Lcom/android/server/pm/pkg/component/ParsedUsesPermission;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addUsesSdkLibrary(Ljava/lang/String;J[Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    .line 708
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesSdkLibraries:Ljava/util/List;

    .line 709
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 708
    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesSdkLibraries:Ljava/util/List;

    .line 710
    iget-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesVersionsMajor:[J

    const/4 v0, 0x1

    invoke-static {p1, p2, p3, v0}, Lcom/android/internal/util/ArrayUtils;->appendLong([JJZ)[J

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesVersionsMajor:[J

    .line 712
    const-class p1, [Ljava/lang/String;

    iget-object p2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesCertDigests:[[Ljava/lang/String;

    invoke-static {p1, p2, p4, v0}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesCertDigests:[[Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic addUsesSdkLibrary(Ljava/lang/String;J[Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->addUsesSdkLibrary(Ljava/lang/String;J[Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addUsesStaticLibrary(Ljava/lang/String;J[Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    .line 720
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesStaticLibraries:Ljava/util/List;

    .line 721
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 720
    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesStaticLibraries:Ljava/util/List;

    .line 722
    iget-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesStaticLibrariesVersions:[J

    const/4 v0, 0x1

    invoke-static {p1, p2, p3, v0}, Lcom/android/internal/util/ArrayUtils;->appendLong([JJZ)[J

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesStaticLibrariesVersions:[J

    .line 724
    const-class p1, [Ljava/lang/String;

    iget-object p2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    invoke-static {p1, p2, p4, v0}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic addUsesStaticLibrary(Ljava/lang/String;J[Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->addUsesStaticLibrary(Ljava/lang/String;J[Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public asSplit([Ljava/lang/String;[Ljava/lang/String;[ILandroid/util/SparseArray;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 737
    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->splitNames:[Ljava/lang/String;

    .line 738
    iput-object p2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->splitCodePaths:[Ljava/lang/String;

    .line 739
    iput-object p3, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->splitRevisionCodes:[I

    .line 740
    iput-object p4, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->splitDependencies:Landroid/util/SparseArray;

    .line 742
    array-length p1, p1

    .line 743
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->splitFlags:[I

    .line 744
    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->splitClassLoaderNames:[Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic asSplit([Ljava/lang/String;[Ljava/lang/String;[ILandroid/util/SparseArray;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->asSplit([Ljava/lang/String;[Ljava/lang/String;[ILandroid/util/SparseArray;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public assignDerivedFields()V
    .locals 2

    .line 749
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->volumeUuid:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mStorageUuid:Ljava/util/UUID;

    .line 750
    iget v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->versionCodeMajor:I

    iget v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->versionCode:I

    invoke-static {v0, v1}, Landroid/content/pm/PackageInfo;->composeLongVersionCode(II)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mLongVersionCode:J

    return-void
.end method

.method public final assignDerivedFields2()V
    .locals 4

    const/4 v0, 0x0

    .line 2714
    invoke-static {p0, v0}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoFlags(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBaseAppInfoFlags:I

    .line 2715
    invoke-static {p0, v0}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoPrivateFlags(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBaseAppInfoPrivateFlags:I

    .line 2716
    invoke-static {p0, v0}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoPrivateFlagsExt(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBaseAppInfoPrivateFlagsExt:I

    .line 2717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getVolumeUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Environment;->getDataDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2718
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2719
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBaseAppDataCredentialProtectedDirForSystemUser:Ljava/lang/String;

    .line 2721
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "user_de"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBaseAppDataDeviceProtectedDirForSystemUser:Ljava/lang/String;

    return-void
.end method

.method public final buildAppClassNamesByProcess()Landroid/util/ArrayMap;
    .locals 7

    .line 765
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->processes:Ljava/util/Map;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Map;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 768
    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 769
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->processes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 770
    iget-object v3, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->processes:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/component/ParsedProcess;

    .line 772
    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedProcess;->getAppClassNamesByPackage()Landroid/util/ArrayMap;

    move-result-object v3

    const/4 v4, 0x0

    .line 774
    :goto_0
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 775
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 777
    iget-object v6, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 778
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 779
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 780
    invoke-virtual {v0, v2, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public capPermissionPriorities()Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 3

    .line 2982
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->permissionGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 2985
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->permissionGroups:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setPriority(Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic capPermissionPriorities()Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 110
    invoke-virtual {p0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->capPermissionPriorities()Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public clearAdoptPermissions()Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    .line 2849
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->adoptPermissions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p0
.end method

.method public bridge synthetic clearAdoptPermissions()Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 110
    invoke-virtual {p0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->clearAdoptPermissions()Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public clearOriginalPackages()Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    .line 2843
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->originalPackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p0
.end method

.method public bridge synthetic clearOriginalPackages()Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 110
    invoke-virtual {p0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->clearOriginalPackages()Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public clearProtectedBroadcasts()Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    .line 2837
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->protectedBroadcasts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p0
.end method

.method public bridge synthetic clearProtectedBroadcasts()Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 110
    invoke-virtual {p0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->clearProtectedBroadcasts()Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public describeContents()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getActivities()Ljava/util/List;
    .locals 0

    .line 843
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    return-object p0
.end method

.method public getAdoptPermissions()Ljava/util/List;
    .locals 0

    .line 849
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->adoptPermissions:Ljava/util/List;

    return-object p0
.end method

.method public getApexSystemServices()Ljava/util/List;
    .locals 0

    .line 855
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->apexSystemServices:Ljava/util/List;

    return-object p0
.end method

.method public getAppComponentFactory()Ljava/lang/String;
    .locals 0

    .line 861
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->appComponentFactory:Ljava/lang/String;

    return-object p0
.end method

.method public getApplicationClassName()Ljava/lang/String;
    .locals 0

    .line 911
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->className:Ljava/lang/String;

    return-object p0
.end method

.method public getAttributions()Ljava/util/List;
    .locals 0

    .line 867
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->attributions:Ljava/util/List;

    return-object p0
.end method

.method public getAutoRevokePermissions()I
    .locals 0

    .line 872
    iget p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->autoRevokePermissions:I

    return p0
.end method

.method public getBackupAgentName()Ljava/lang/String;
    .locals 0

    .line 878
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->backupAgentName:Ljava/lang/String;

    return-object p0
.end method

.method public getBannerResourceId()I
    .locals 0

    .line 883
    iget p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->banner:I

    return p0
.end method

.method public getBaseApkPath()Ljava/lang/String;
    .locals 0

    .line 889
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBaseApkPath:Ljava/lang/String;

    return-object p0
.end method

.method public getBaseAppDataCredentialProtectedDirForSystemUser()Ljava/lang/String;
    .locals 0

    .line 3577
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBaseAppDataCredentialProtectedDirForSystemUser:Ljava/lang/String;

    return-object p0
.end method

.method public getBaseAppDataDeviceProtectedDirForSystemUser()Ljava/lang/String;
    .locals 0

    .line 3581
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBaseAppDataDeviceProtectedDirForSystemUser:Ljava/lang/String;

    return-object p0
.end method

.method public getBaseRevisionCode()I
    .locals 0

    .line 894
    iget p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->baseRevisionCode:I

    return p0
.end method

.method public final getBoolean(J)Z
    .locals 2

    .line 2635
    iget-wide v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBooleans:J

    and-long p0, v0, p1

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getBoolean2(J)Z
    .locals 2

    .line 2648
    iget-wide v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBooleans2:J

    and-long p0, v0, p1

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getCategory()I
    .locals 0

    .line 899
    iget p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->category:I

    return p0
.end method

.method public getClassLoaderName()Ljava/lang/String;
    .locals 0

    .line 905
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->classLoaderName:Ljava/lang/String;

    return-object p0
.end method

.method public getCompatibleWidthLimitDp()I
    .locals 0

    .line 916
    iget p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->compatibleWidthLimitDp:I

    return p0
.end method

.method public getCompileSdkVersion()I
    .locals 0

    .line 921
    iget p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->compileSdkVersion:I

    return p0
.end method

.method public getCompileSdkVersionCodeName()Ljava/lang/String;
    .locals 0

    .line 927
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->compileSdkVersionCodeName:Ljava/lang/String;

    return-object p0
.end method

.method public getConfigPreferences()Ljava/util/List;
    .locals 0

    .line 933
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->configPreferences:Ljava/util/List;

    return-object p0
.end method

.method public getDataExtractionRulesResourceId()I
    .locals 0

    .line 938
    iget p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->dataExtractionRules:I

    return p0
.end method

.method public getDescriptionResourceId()I
    .locals 0

    .line 943
    iget p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->descriptionRes:I

    return p0
.end method

.method public getFeatureGroups()Ljava/util/List;
    .locals 0

    .line 949
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->featureGroups:Ljava/util/List;

    return-object p0
.end method

.method public getFullBackupContentResourceId()I
    .locals 0

    .line 954
    iget p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->fullBackupContent:I

    return p0
.end method

.method public getGwpAsanMode()I
    .locals 0

    .line 960
    iget p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->gwpAsanMode:I

    return p0
.end method

.method public getIconResourceId()I
    .locals 0

    .line 965
    iget p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->iconRes:I

    return p0
.end method

.method public getImplicitPermissions()Ljava/util/List;
    .locals 0

    .line 971
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->implicitPermissions:Ljava/util/List;

    return-object p0
.end method

.method public getInstallLocation()I
    .locals 0

    .line 976
    iget p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->installLocation:I

    return p0
.end method

.method public getInstrumentations()Ljava/util/List;
    .locals 0

    .line 982
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->instrumentations:Ljava/util/List;

    return-object p0
.end method

.method public getKeySetMapping()Ljava/util/Map;
    .locals 0

    .line 988
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->keySetMapping:Ljava/util/Map;

    return-object p0
.end method

.method public getKnownActivityEmbeddingCerts()Ljava/util/Set;
    .locals 0

    .line 994
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    return-object p0
.end method

.method public getLabelResourceId()I
    .locals 0

    .line 999
    iget p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->labelRes:I

    return p0
.end method

.method public getLargestWidthLimitDp()I
    .locals 0

    .line 1004
    iget p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->largestWidthLimitDp:I

    return p0
.end method

.method public getLibraryNames()Ljava/util/List;
    .locals 0

    .line 1010
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->libraryNames:Ljava/util/List;

    return-object p0
.end method

.method public getLocaleConfigResourceId()I
    .locals 0

    .line 1015
    iget p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mLocaleConfigRes:I

    return p0
.end method

.method public getLogoResourceId()I
    .locals 0

    .line 1020
    iget p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->logo:I

    return p0
.end method

.method public getLongVersionCode()J
    .locals 2

    .line 2769
    iget v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->versionCodeMajor:I

    iget p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->versionCode:I

    invoke-static {v0, p0}, Landroid/content/pm/PackageInfo;->composeLongVersionCode(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public getManageSpaceActivityName()Ljava/lang/String;
    .locals 0

    .line 1026
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->manageSpaceActivityName:Ljava/lang/String;

    return-object p0
.end method

.method public getManifestPackageName()Ljava/lang/String;
    .locals 0

    .line 3390
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->manifestPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getMaxAspectRatio()F
    .locals 0

    .line 1031
    iget p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->maxAspectRatio:F

    return p0
.end method

.method public getMaxSdkVersion()I
    .locals 0

    .line 1036
    iget p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->maxSdkVersion:I

    return p0
.end method

.method public getMemtagMode()I
    .locals 0

    .line 1042
    iget p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->memtagMode:I

    return p0
.end method

.method public getMetaData()Landroid/os/Bundle;
    .locals 0

    .line 1048
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->metaData:Landroid/os/Bundle;

    return-object p0
.end method

.method public getMimeGroups()Ljava/util/Set;
    .locals 0

    .line 1054
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mimeGroups:Ljava/util/Set;

    return-object p0
.end method

.method public getMinAspectRatio()F
    .locals 0

    .line 1059
    iget p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->minAspectRatio:F

    return p0
.end method

.method public getMinExtensionVersions()Landroid/util/SparseIntArray;
    .locals 0

    .line 1065
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->minExtensionVersions:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method public getMinSdkVersion()I
    .locals 0

    .line 1070
    iget p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->minSdkVersion:I

    return p0
.end method

.method public getNativeHeapZeroInitialized()I
    .locals 0

    .line 1076
    iget p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeHeapZeroInitialized:I

    return p0
.end method

.method public getNativeLibraryDir()Ljava/lang/String;
    .locals 0

    .line 3400
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryDir:Ljava/lang/String;

    return-object p0
.end method

.method public getNativeLibraryRootDir()Ljava/lang/String;
    .locals 0

    .line 3406
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryRootDir:Ljava/lang/String;

    return-object p0
.end method

.method public getNetworkSecurityConfigResourceId()I
    .locals 0

    .line 1081
    iget p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->networkSecurityConfigRes:I

    return p0
.end method

.method public getNonLocalizedLabel()Ljava/lang/CharSequence;
    .locals 0

    .line 1087
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nonLocalizedLabel:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getOriginalPackages()Ljava/util/List;
    .locals 0

    .line 1093
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->originalPackages:Ljava/util/List;

    return-object p0
.end method

.method public getOverlayCategory()Ljava/lang/String;
    .locals 0

    .line 1099
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->overlayCategory:Ljava/lang/String;

    return-object p0
.end method

.method public getOverlayPriority()I
    .locals 0

    .line 1104
    iget p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->overlayPriority:I

    return p0
.end method

.method public getOverlayTarget()Ljava/lang/String;
    .locals 0

    .line 1110
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->overlayTarget:Ljava/lang/String;

    return-object p0
.end method

.method public getOverlayTargetOverlayableName()Ljava/lang/String;
    .locals 0

    .line 1116
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->overlayTargetOverlayableName:Ljava/lang/String;

    return-object p0
.end method

.method public getOverlayables()Ljava/util/Map;
    .locals 0

    .line 1122
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->overlayables:Ljava/util/Map;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 1128
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 0

    .line 1134
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mPath:Ljava/lang/String;

    return-object p0
.end method

.method public getPermission()Ljava/lang/String;
    .locals 0

    .line 1140
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->permission:Ljava/lang/String;

    return-object p0
.end method

.method public getPermissionGroups()Ljava/util/List;
    .locals 0

    .line 1146
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->permissionGroups:Ljava/util/List;

    return-object p0
.end method

.method public getPermissions()Ljava/util/List;
    .locals 0

    .line 1152
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->permissions:Ljava/util/List;

    return-object p0
.end method

.method public getPreferredActivityFilters()Ljava/util/List;
    .locals 0

    .line 1158
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->preferredActivityFilters:Ljava/util/List;

    return-object p0
.end method

.method public getPrimaryCpuAbi()Ljava/lang/String;
    .locals 0

    .line 3417
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->primaryCpuAbi:Ljava/lang/String;

    return-object p0
.end method

.method public getProcessName()Ljava/lang/String;
    .locals 1

    .line 1164
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->processName:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getProcesses()Ljava/util/Map;
    .locals 0

    .line 1170
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->processes:Ljava/util/Map;

    return-object p0
.end method

.method public getProperties()Ljava/util/Map;
    .locals 0

    .line 1176
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mProperties:Ljava/util/Map;

    return-object p0
.end method

.method public getProtectedBroadcasts()Ljava/util/List;
    .locals 0

    .line 1182
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->protectedBroadcasts:Ljava/util/List;

    return-object p0
.end method

.method public getProviders()Ljava/util/List;
    .locals 0

    .line 1188
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    return-object p0
.end method

.method public getQueriesIntents()Ljava/util/List;
    .locals 0

    .line 1194
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->queriesIntents:Ljava/util/List;

    return-object p0
.end method

.method public getQueriesPackages()Ljava/util/List;
    .locals 0

    .line 1200
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->queriesPackages:Ljava/util/List;

    return-object p0
.end method

.method public getQueriesProviders()Ljava/util/Set;
    .locals 0

    .line 1206
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->queriesProviders:Ljava/util/Set;

    return-object p0
.end method

.method public getReceivers()Ljava/util/List;
    .locals 0

    .line 1212
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    return-object p0
.end method

.method public getRequestedFeatures()Ljava/util/List;
    .locals 0

    .line 1218
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->reqFeatures:Ljava/util/List;

    return-object p0
.end method

.method public getRequestedPermissions()Ljava/util/List;
    .locals 0

    .line 1229
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->requestedPermissions:Ljava/util/List;

    return-object p0
.end method

.method public getRequiredAccountType()Ljava/lang/String;
    .locals 0

    .line 1235
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->requiredAccountType:Ljava/lang/String;

    return-object p0
.end method

.method public getRequiresSmallestWidthDp()I
    .locals 0

    .line 1240
    iget p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->requiresSmallestWidthDp:I

    return p0
.end method

.method public getResizeableActivity()Ljava/lang/Boolean;
    .locals 0

    .line 1246
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->resizeableActivity:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getRestrictUpdateHash()[B
    .locals 0

    .line 1252
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->restrictUpdateHash:[B

    return-object p0
.end method

.method public getRestrictedAccountType()Ljava/lang/String;
    .locals 0

    .line 1258
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->restrictedAccountType:Ljava/lang/String;

    return-object p0
.end method

.method public getRoundIconResourceId()I
    .locals 0

    .line 1263
    iget p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->roundIconRes:I

    return p0
.end method

.method public getSdkLibVersionMajor()I
    .locals 0

    .line 1274
    iget p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sdkLibVersionMajor:I

    return p0
.end method

.method public getSdkLibraryName()Ljava/lang/String;
    .locals 0

    .line 1269
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sdkLibraryName:Ljava/lang/String;

    return-object p0
.end method

.method public getSecondaryCpuAbi()Ljava/lang/String;
    .locals 0

    .line 3423
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->secondaryCpuAbi:Ljava/lang/String;

    return-object p0
.end method

.method public getSecondaryNativeLibraryDir()Ljava/lang/String;
    .locals 0

    .line 3429
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->secondaryNativeLibraryDir:Ljava/lang/String;

    return-object p0
.end method

.method public getServices()Ljava/util/List;
    .locals 0

    .line 1280
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    return-object p0
.end method

.method public getSharedUserId()Ljava/lang/String;
    .locals 0

    .line 1286
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sharedUserId:Ljava/lang/String;

    return-object p0
.end method

.method public getSharedUserLabelResourceId()I
    .locals 0

    .line 1291
    iget p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sharedUserLabel:I

    return p0
.end method

.method public getSigningDetails()Landroid/content/pm/SigningDetails;
    .locals 0

    .line 1297
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->signingDetails:Landroid/content/pm/SigningDetails;

    return-object p0
.end method

.method public getSplitClassLoaderNames()[Ljava/lang/String;
    .locals 0

    .line 1303
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->splitClassLoaderNames:[Ljava/lang/String;

    if-nez p0, :cond_0

    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public getSplitCodePaths()[Ljava/lang/String;
    .locals 0

    .line 1309
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->splitCodePaths:[Ljava/lang/String;

    if-nez p0, :cond_0

    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public getSplitDependencies()Landroid/util/SparseArray;
    .locals 0

    .line 1315
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->splitDependencies:Landroid/util/SparseArray;

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->EMPTY_INT_ARRAY_SPARSE_ARRAY:Landroid/util/SparseArray;

    :cond_0
    return-object p0
.end method

.method public getSplitFlags()[I
    .locals 0

    .line 1321
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->splitFlags:[I

    return-object p0
.end method

.method public getSplitNames()[Ljava/lang/String;
    .locals 0

    .line 1327
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->splitNames:[Ljava/lang/String;

    if-nez p0, :cond_0

    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public getSplitRevisionCodes()[I
    .locals 0

    .line 1333
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->splitRevisionCodes:[I

    if-nez p0, :cond_0

    sget-object p0, Llibcore/util/EmptyArray;->INT:[I

    :cond_0
    return-object p0
.end method

.method public getSplits()Ljava/util/List;
    .locals 15

    .line 790
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mSplits:Ljava/util/List;

    if-nez v0, :cond_5

    .line 791
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 792
    new-instance v7, Lcom/android/server/pm/pkg/AndroidPackageSplitImpl;

    const/4 v2, 0x0

    .line 794
    invoke-virtual {p0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBaseApkPath()Ljava/lang/String;

    move-result-object v3

    .line 795
    invoke-virtual {p0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBaseRevisionCode()I

    move-result v4

    .line 796
    invoke-virtual {p0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->isDeclaredHavingCode()Z

    move-result v1

    const/4 v8, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, v8

    .line 797
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getClassLoaderName()Ljava/lang/String;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/pkg/AndroidPackageSplitImpl;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 792
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 800
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->splitNames:[Ljava/lang/String;

    if-eqz v1, :cond_1

    move v1, v8

    .line 801
    :goto_1
    iget-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->splitNames:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 802
    new-instance v3, Lcom/android/server/pm/pkg/AndroidPackageSplitImpl;

    aget-object v10, v2, v1

    iget-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->splitCodePaths:[Ljava/lang/String;

    aget-object v11, v2, v1

    iget-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->splitRevisionCodes:[I

    aget v12, v2, v1

    iget-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->splitFlags:[I

    aget v13, v2, v1

    iget-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->splitClassLoaderNames:[Ljava/lang/String;

    aget-object v14, v2, v1

    move-object v9, v3

    invoke-direct/range {v9 .. v14}, Lcom/android/server/pm/pkg/AndroidPackageSplitImpl;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 812
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->splitDependencies:Landroid/util/SparseArray;

    if-eqz v1, :cond_4

    move v1, v8

    .line 813
    :goto_2
    iget-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->splitDependencies:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 814
    iget-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->splitDependencies:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 815
    iget-object v3, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->splitDependencies:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 816
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 817
    array-length v5, v3

    move v6, v8

    :goto_3
    if-ge v6, v5, :cond_3

    aget v7, v3, v6

    if-ltz v7, :cond_2

    .line 820
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/pkg/AndroidPackageSplit;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 823
    :cond_3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/AndroidPackageSplitImpl;

    .line 824
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/pkg/AndroidPackageSplitImpl;->fillDependencies(Ljava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 828
    :cond_4
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mSplits:Ljava/util/List;

    .line 830
    :cond_5
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mSplits:Ljava/util/List;

    return-object p0
.end method

.method public getStaticSharedLibraryName()Ljava/lang/String;
    .locals 0

    .line 1339
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->staticSharedLibraryName:Ljava/lang/String;

    return-object p0
.end method

.method public getStaticSharedLibraryVersion()J
    .locals 2

    .line 1344
    iget-wide v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->staticSharedLibVersion:J

    return-wide v0
.end method

.method public getStorageUuid()Ljava/util/UUID;
    .locals 0

    .line 1349
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mStorageUuid:Ljava/util/UUID;

    return-object p0
.end method

.method public getTargetSandboxVersion()I
    .locals 0

    .line 1354
    iget p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->targetSandboxVersion:I

    return p0
.end method

.method public getTargetSdkVersion()I
    .locals 0

    .line 1359
    iget p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->targetSdkVersion:I

    return p0
.end method

.method public getTaskAffinity()Ljava/lang/String;
    .locals 0

    .line 1365
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->taskAffinity:Ljava/lang/String;

    return-object p0
.end method

.method public getThemeResourceId()I
    .locals 0

    .line 1370
    iget p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->theme:I

    return p0
.end method

.method public getUiOptions()I
    .locals 0

    .line 1375
    iget p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->uiOptions:I

    return p0
.end method

.method public getUid()I
    .locals 0

    .line 3492
    iget p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->uid:I

    return p0
.end method

.method public getUpgradeKeySets()Ljava/util/Set;
    .locals 0

    .line 1381
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->upgradeKeySets:Ljava/util/Set;

    return-object p0
.end method

.method public getUsesLibraries()Ljava/util/List;
    .locals 0

    .line 1387
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    return-object p0
.end method

.method public getUsesLibrariesSorted()[Ljava/lang/String;
    .locals 1

    .line 1393
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mUsesLibrariesSorted:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1398
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    invoke-static {v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sortLibraries(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mUsesLibrariesSorted:[Ljava/lang/String;

    .line 1400
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mUsesLibrariesSorted:[Ljava/lang/String;

    return-object p0
.end method

.method public getUsesNativeLibraries()Ljava/util/List;
    .locals 0

    .line 1406
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesNativeLibraries:Ljava/util/List;

    return-object p0
.end method

.method public getUsesOptionalLibraries()Ljava/util/List;
    .locals 0

    .line 1412
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesOptionalLibraries:Ljava/util/List;

    return-object p0
.end method

.method public getUsesOptionalLibrariesSorted()[Ljava/lang/String;
    .locals 1

    .line 1418
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mUsesOptionalLibrariesSorted:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1419
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesOptionalLibraries:Ljava/util/List;

    invoke-static {v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sortLibraries(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mUsesOptionalLibrariesSorted:[Ljava/lang/String;

    .line 1421
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mUsesOptionalLibrariesSorted:[Ljava/lang/String;

    return-object p0
.end method

.method public getUsesOptionalNativeLibraries()Ljava/util/List;
    .locals 0

    .line 1427
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    return-object p0
.end method

.method public getUsesPermissions()Ljava/util/List;
    .locals 0

    .line 1433
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesPermissions:Ljava/util/List;

    return-object p0
.end method

.method public getUsesSdkLibraries()Ljava/util/List;
    .locals 0

    .line 1438
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesSdkLibraries:Ljava/util/List;

    return-object p0
.end method

.method public getUsesSdkLibrariesCertDigests()[[Ljava/lang/String;
    .locals 0

    .line 1451
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesCertDigests:[[Ljava/lang/String;

    return-object p0
.end method

.method public getUsesSdkLibrariesSorted()[Ljava/lang/String;
    .locals 1

    .line 1443
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mUsesSdkLibrariesSorted:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1444
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesSdkLibraries:Ljava/util/List;

    invoke-static {v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sortLibraries(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mUsesSdkLibrariesSorted:[Ljava/lang/String;

    .line 1446
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mUsesSdkLibrariesSorted:[Ljava/lang/String;

    return-object p0
.end method

.method public getUsesSdkLibrariesVersionsMajor()[J
    .locals 0

    .line 1455
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesVersionsMajor:[J

    return-object p0
.end method

.method public getUsesStaticLibraries()Ljava/util/List;
    .locals 0

    .line 1460
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesStaticLibraries:Ljava/util/List;

    return-object p0
.end method

.method public getUsesStaticLibrariesCertDigests()[[Ljava/lang/String;
    .locals 0

    .line 1475
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    return-object p0
.end method

.method public getUsesStaticLibrariesSorted()[Ljava/lang/String;
    .locals 1

    .line 1466
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mUsesStaticLibrariesSorted:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1467
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesStaticLibraries:Ljava/util/List;

    invoke-static {v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sortLibraries(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mUsesStaticLibrariesSorted:[Ljava/lang/String;

    .line 1469
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mUsesStaticLibrariesSorted:[Ljava/lang/String;

    return-object p0
.end method

.method public getUsesStaticLibrariesVersions()[J
    .locals 0

    .line 1481
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesStaticLibrariesVersions:[J

    return-object p0
.end method

.method public getVersionCode()I
    .locals 0

    .line 1486
    iget p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->versionCode:I

    return p0
.end method

.method public getVersionCodeMajor()I
    .locals 0

    .line 1491
    iget p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->versionCodeMajor:I

    return p0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 0

    .line 1497
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->versionName:Ljava/lang/String;

    return-object p0
.end method

.method public getVolumeUuid()Ljava/lang/String;
    .locals 0

    .line 1503
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->volumeUuid:Ljava/lang/String;

    return-object p0
.end method

.method public getZygotePreloadName()Ljava/lang/String;
    .locals 0

    .line 1509
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->zygotePreloadName:Ljava/lang/String;

    return-object p0
.end method

.method public hasPreserveLegacyExternalStorage()Z
    .locals 2

    const-wide v0, 0x2000000000L

    .line 1514
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public hasRequestForegroundServiceExemption()Z
    .locals 2

    const-wide v0, 0x400000000000L

    .line 1519
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public hasRequestRawExternalStorageAccess()Ljava/lang/Boolean;
    .locals 0

    .line 1525
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->requestRawExternalStorageAccess:Ljava/lang/Boolean;

    return-object p0
.end method

.method public hideAsFinal()Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;
    .locals 1

    .line 2695
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mStorageUuid:Ljava/util/UUID;

    if-nez v0, :cond_0

    .line 2696
    invoke-virtual {p0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->assignDerivedFields()V

    .line 2698
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->assignDerivedFields2()V

    .line 2699
    invoke-virtual {p0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->makeImmutable()V

    return-object p0
.end method

.method public hideAsParsed()Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 2689
    invoke-virtual {p0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->assignDerivedFields()V

    return-object p0
.end method

.method public bridge synthetic hideAsParsed()Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 110
    invoke-virtual {p0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->hideAsParsed()Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public is32BitAbiPreferred()Z
    .locals 2

    const-wide v0, 0x10000000000L

    .line 1789
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isAllowAudioPlaybackCapture()Z
    .locals 2

    const-wide v0, 0x80000000L

    .line 1530
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isAllowNativeHeapPointerTagging()Z
    .locals 2

    const-wide v0, 0x1000000000L

    .line 1550
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isAnyDensity()Z
    .locals 1

    .line 1559
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->anyDensity:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 1560
    iget p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->targetSdkVersion:I

    const/4 v0, 0x4

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 1563
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isApex()Z
    .locals 2

    const-wide/16 v0, 0x2

    .line 3449
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean2(J)Z

    move-result p0

    return p0
.end method

.method public isAttributionsUserVisible()Z
    .locals 2

    const-wide v0, 0x800000000000L

    .line 731
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isBackupAllowed()Z
    .locals 2

    const-wide/16 v0, 0x4

    .line 1535
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isBackupInForeground()Z
    .locals 2

    const-wide/32 v0, 0x1000000

    .line 1568
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isClearUserDataAllowed()Z
    .locals 2

    const-wide/16 v0, 0x800

    .line 1540
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isClearUserDataOnFailedRestoreAllowed()Z
    .locals 2

    const-wide/32 v0, 0x40000000

    .line 1545
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isCleartextTrafficAllowed()Z
    .locals 2

    const-wide/16 v0, 0x2000

    .line 1799
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isCoreApp()Z
    .locals 2

    const-wide/high16 v0, 0x10000000000000L

    .line 3434
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isCrossProfile()Z
    .locals 2

    const-wide v0, 0x80000000000L

    .line 1583
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isDebuggable()Z
    .locals 2

    const-wide/16 v0, 0x80

    .line 1588
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isDeclaredHavingCode()Z
    .locals 2

    const-wide/16 v0, 0x200

    .line 1633
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isDefaultToDeviceProtectedStorage()Z
    .locals 2

    const-wide/32 v0, 0x4000000

    .line 1593
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isDirectBootAware()Z
    .locals 2

    const-wide/32 v0, 0x8000000

    .line 1598
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isEnabled()Z
    .locals 2

    const-wide v0, 0x100000000000L

    .line 1603
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isExternalStorage()Z
    .locals 2

    const-wide/16 v0, 0x1

    .line 1608
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isExtraLargeScreensSupported()Z
    .locals 1

    .line 1750
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->supportsExtraLargeScreens:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 1751
    iget p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->targetSdkVersion:I

    const/16 v0, 0x9

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 1754
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isExtractNativeLibrariesRequested()Z
    .locals 2

    const-wide/32 v0, 0x20000

    .line 1613
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isFactoryTest()Z
    .locals 2

    const-wide/high16 v0, 0x40000000000000L

    .line 3444
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isForceQueryable()Z
    .locals 2

    const-wide v0, 0x40000000000L

    .line 1618
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isFullBackupOnly()Z
    .locals 2

    const-wide/16 v0, 0x20

    .line 1623
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isGame()Z
    .locals 2

    const-wide/32 v0, 0x40000

    .line 1628
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isHardwareAccelerated()Z
    .locals 2

    const-wide/16 v0, 0x2

    .line 1573
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isHasDomainUrls()Z
    .locals 2

    const-wide/32 v0, 0x400000

    .line 1638
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isIsolatedSplitLoading()Z
    .locals 2

    const-wide/32 v0, 0x200000

    .line 1648
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isKillAfterRestoreAllowed()Z
    .locals 2

    const-wide/16 v0, 0x8

    .line 1653
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isLargeHeap()Z
    .locals 2

    const-wide/16 v0, 0x1000

    .line 1658
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isLargeScreensSupported()Z
    .locals 1

    .line 1758
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->supportsLargeScreens:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 1759
    iget p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->targetSdkVersion:I

    const/4 v0, 0x4

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 1762
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isLeavingSharedUser()Z
    .locals 2

    const-wide/high16 v0, 0x8000000000000L

    .line 1663
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isMultiArch()Z
    .locals 2

    const-wide/32 v0, 0x10000

    .line 1668
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isNativeLibraryRootRequiresIsa()Z
    .locals 0

    .line 3411
    iget-boolean p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryRootRequiresIsa:Z

    return p0
.end method

.method public isNonSdkApiRequested()Z
    .locals 2

    const-wide v0, 0x200000000L

    .line 1804
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isNormalScreensSupported()Z
    .locals 0

    .line 1766
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->supportsNormalScreens:Ljava/lang/Boolean;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isOdm()Z
    .locals 2

    const-wide/high16 v0, 0x2000000000000000L

    .line 3479
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isOem()Z
    .locals 2

    const-wide/high16 v0, 0x400000000000000L

    .line 3464
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isOnBackInvokedCallbackEnabled()Z
    .locals 2

    const-wide/high16 v0, 0x4000000000000L

    .line 1673
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isOverlayIsStatic()Z
    .locals 2

    const-wide v0, 0x8000000000L

    .line 1683
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isPartiallyDirectBootAware()Z
    .locals 2

    const-wide/32 v0, 0x10000000

    .line 1688
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isPersistent()Z
    .locals 2

    const-wide/16 v0, 0x40

    .line 1693
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isPrivileged()Z
    .locals 2

    const-wide/high16 v0, 0x200000000000000L

    .line 3459
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isProduct()Z
    .locals 2

    const-wide/high16 v0, 0x1000000000000000L

    .line 3474
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isProfileable()Z
    .locals 2

    const-wide v0, 0x200000000000L

    .line 1698
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isProfileableByShell()Z
    .locals 2

    .line 1703
    invoke-virtual {p0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->isProfileable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x800000

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRequestLegacyExternalStorage()Z
    .locals 2

    const-wide v0, 0x100000000L

    .line 1708
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isRequiredForAllUsers()Z
    .locals 2

    const-wide v0, 0x4000000000L

    .line 1713
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isResetEnabledSettingsOnAppDataCleared()Z
    .locals 2

    const-wide/high16 v0, 0x1000000000000L

    .line 1718
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isResizeable()Z
    .locals 1

    .line 1722
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->resizeable:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 1723
    iget p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->targetSdkVersion:I

    const/4 v0, 0x4

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 1726
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isResizeableActivityViaSdkVersion()Z
    .locals 2

    const-wide/32 v0, 0x20000000

    .line 1731
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isResourceOverlay()Z
    .locals 2

    const-wide/32 v0, 0x100000

    .line 1678
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isRestoreAnyVersion()Z
    .locals 2

    const-wide/16 v0, 0x10

    .line 1736
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isRtlSupported()Z
    .locals 2

    const-wide/16 v0, 0x4000

    .line 1771
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isSaveStateDisallowed()Z
    .locals 2

    const-wide v0, 0x800000000L

    .line 1578
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isSdkLibrary()Z
    .locals 2

    const-wide/high16 v0, 0x2000000000000L

    .line 1741
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isSignedWithPlatformKey()Z
    .locals 2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 3484
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isSmallScreensSupported()Z
    .locals 1

    .line 1775
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->supportsSmallScreens:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 1776
    iget p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->targetSdkVersion:I

    const/4 v0, 0x4

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 1779
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isStaticSharedLibrary()Z
    .locals 2

    const-wide/32 v0, 0x80000

    .line 1746
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isStub()Z
    .locals 2

    const-wide/16 v0, 0x1

    .line 3394
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean2(J)Z

    move-result p0

    return p0
.end method

.method public isSystem()Z
    .locals 2

    const-wide/high16 v0, 0x20000000000000L

    .line 3439
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isSystemExt()Z
    .locals 2

    const-wide/high16 v0, 0x100000000000000L

    .line 3454
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isTaskReparentingAllowed()Z
    .locals 2

    const-wide/16 v0, 0x400

    .line 1555
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isTestOnly()Z
    .locals 2

    const-wide/32 v0, 0x8000

    .line 1784
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isUseEmbeddedDex()Z
    .locals 2

    const-wide/32 v0, 0x2000000

    .line 1794
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isUserDataFragile()Z
    .locals 2

    const-wide v0, 0x400000000L

    .line 1643
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isVendor()Z
    .locals 2

    const-wide/high16 v0, 0x800000000000000L

    .line 3469
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isVisibleToInstantApps()Z
    .locals 2

    const-wide v0, 0x20000000000L

    .line 1809
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isVmSafeMode()Z
    .locals 2

    const-wide/16 v0, 0x100

    .line 1814
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public final makeImmutable()V
    .locals 1

    .line 2726
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    .line 2727
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesOptionalLibraries:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesOptionalLibraries:Ljava/util/List;

    .line 2728
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesNativeLibraries:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesNativeLibraries:Ljava/util/List;

    .line 2729
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    .line 2730
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->originalPackages:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->originalPackages:Ljava/util/List;

    .line 2731
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->adoptPermissions:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->adoptPermissions:Ljava/util/List;

    .line 2732
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->requestedPermissions:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->requestedPermissions:Ljava/util/List;

    .line 2733
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->protectedBroadcasts:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->protectedBroadcasts:Ljava/util/List;

    .line 2734
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->apexSystemServices:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->apexSystemServices:Ljava/util/List;

    .line 2736
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    .line 2737
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    .line 2738
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    .line 2739
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    .line 2740
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->permissions:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->permissions:Ljava/util/List;

    .line 2741
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->permissionGroups:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->permissionGroups:Ljava/util/List;

    .line 2742
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->instrumentations:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->instrumentations:Ljava/util/List;

    .line 2744
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->overlayables:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->overlayables:Ljava/util/Map;

    .line 2745
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->libraryNames:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->libraryNames:Ljava/util/List;

    .line 2746
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesStaticLibraries:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesStaticLibraries:Ljava/util/List;

    .line 2747
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesSdkLibraries:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesSdkLibraries:Ljava/util/List;

    .line 2748
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->configPreferences:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->configPreferences:Ljava/util/List;

    .line 2749
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->reqFeatures:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->reqFeatures:Ljava/util/List;

    .line 2750
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->featureGroups:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->featureGroups:Ljava/util/List;

    .line 2751
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesPermissions:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesPermissions:Ljava/util/List;

    .line 2752
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesSdkLibraries:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesSdkLibraries:Ljava/util/List;

    .line 2753
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->implicitPermissions:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->implicitPermissions:Ljava/util/List;

    .line 2754
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->upgradeKeySets:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->upgradeKeySets:Ljava/util/Set;

    .line 2755
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->keySetMapping:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->keySetMapping:Ljava/util/Map;

    .line 2756
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->attributions:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->attributions:Ljava/util/List;

    .line 2757
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->preferredActivityFilters:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->preferredActivityFilters:Ljava/util/List;

    .line 2758
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->processes:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->processes:Ljava/util/Map;

    .line 2759
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mProperties:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mProperties:Ljava/util/Map;

    .line 2760
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->queriesIntents:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->queriesIntents:Ljava/util/List;

    .line 2761
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->queriesPackages:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->queriesPackages:Ljava/util/List;

    .line 2762
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->queriesProviders:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->queriesProviders:Ljava/util/Set;

    .line 2763
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mimeGroups:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mimeGroups:Ljava/util/Set;

    .line 2764
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    return-void
.end method

.method public markNotActivitiesAsNotExportedIfSingleUser()Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 6

    .line 2993
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/high16 v3, 0x40000000    # 2.0f

    if-ge v2, v0, :cond_1

    .line 2995
    iget-object v4, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 2996
    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getFlags()I

    move-result v5

    and-int/2addr v3, v5

    if-eqz v3, :cond_0

    .line 2997
    invoke-static {v4, v1}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setExported(Lcom/android/server/pm/pkg/component/ParsedMainComponent;Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3002
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_3

    .line 3004
    iget-object v4, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/component/ParsedService;

    .line 3005
    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getFlags()I

    move-result v5

    and-int/2addr v5, v3

    if-eqz v5, :cond_2

    .line 3006
    invoke-static {v4, v1}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setExported(Lcom/android/server/pm/pkg/component/ParsedMainComponent;Z)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3011
    :cond_3
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_2
    if-ge v2, v0, :cond_5

    .line 3013
    iget-object v4, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/component/ParsedProvider;

    .line 3014
    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getFlags()I

    move-result v5

    and-int/2addr v5, v3

    if-eqz v5, :cond_4

    .line 3015
    invoke-static {v4, v1}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setExported(Lcom/android/server/pm/pkg/component/ParsedMainComponent;Z)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    return-object p0
.end method

.method public bridge synthetic markNotActivitiesAsNotExportedIfSingleUser()Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 110
    invoke-virtual {p0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->markNotActivitiesAsNotExportedIfSingleUser()Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public removePermission(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    .line 2774
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->permissions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic removePermission(I)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->removePermission(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public removeUsesLibrary(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    .line 2794
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->remove(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic removeUsesLibrary(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->removeUsesLibrary(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    .line 2800
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesOptionalLibraries:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->remove(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesOptionalLibraries:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public removeUsesOptionalNativeLibrary(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    .line 1818
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->remove(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic removeUsesOptionalNativeLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->removeUsesOptionalNativeLibrary(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public set32BitAbiPreferred(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide v0, 0x10000000000L

    .line 2469
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic set32BitAbiPreferred(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->set32BitAbiPreferred(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setAllComponentsDirectBootAware(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 4

    .line 2905
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 2907
    iget-object v3, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/component/ParsedMainComponent;

    invoke-static {v3, p1}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setDirectBootAware(Lcom/android/server/pm/pkg/component/ParsedMainComponent;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2911
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_1

    .line 2913
    iget-object v3, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/component/ParsedMainComponent;

    invoke-static {v3, p1}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setDirectBootAware(Lcom/android/server/pm/pkg/component/ParsedMainComponent;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2917
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_2
    if-ge v2, v0, :cond_2

    .line 2919
    iget-object v3, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/component/ParsedMainComponent;

    invoke-static {v3, p1}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setDirectBootAware(Lcom/android/server/pm/pkg/component/ParsedMainComponent;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2923
    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_3
    if-ge v1, v0, :cond_3

    .line 2925
    iget-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedMainComponent;

    invoke-static {v2, p1}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setDirectBootAware(Lcom/android/server/pm/pkg/component/ParsedMainComponent;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    return-object p0
.end method

.method public bridge synthetic setAllComponentsDirectBootAware(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setAllComponentsDirectBootAware(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setAllowAudioPlaybackCapture(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide v0, 0x80000000L

    .line 1825
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setAllowAudioPlaybackCapture(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setAllowAudioPlaybackCapture(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setAllowNativeHeapPointerTagging(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide v0, 0x1000000000L

    .line 1845
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setAllowNativeHeapPointerTagging(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setAllowNativeHeapPointerTagging(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setAnyDensity(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1859
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->anyDensity:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic setAnyDensity(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setAnyDensity(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setApex(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/16 v0, 0x2

    .line 3521
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean2(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    return-object p0
.end method

.method public bridge synthetic setApex(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setApex(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setAppComponentFactory(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 1865
    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->appComponentFactory:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setAppComponentFactory(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setAppComponentFactory(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setApplicationClassName(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1928
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->className:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setApplicationClassName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setApplicationClassName(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setAttributionsAreUserVisible(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 2

    const-wide v0, 0x800000000000L

    .line 1871
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    return-object p0
.end method

.method public setAutoRevokePermissions(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 1877
    iput p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->autoRevokePermissions:I

    return-object p0
.end method

.method public bridge synthetic setAutoRevokePermissions(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setAutoRevokePermissions(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setBackupAgentName(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 1883
    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->backupAgentName:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setBackupAgentName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBackupAgentName(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setBackupAllowed(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/16 v0, 0x4

    .line 1830
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setBackupAllowed(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBackupAllowed(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setBackupInForeground(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/32 v0, 0x1000000

    .line 1889
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setBackupInForeground(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBackupInForeground(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setBannerResourceId(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 1894
    iput p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->banner:I

    return-object p0
.end method

.method public bridge synthetic setBannerResourceId(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBannerResourceId(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setBaseApkPath(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 2934
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBaseApkPath:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setBaseApkPath(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBaseApkPath(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setBaseRevisionCode(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 1905
    iput p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->baseRevisionCode:I

    return-object p0
.end method

.method public final setBoolean(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    if-eqz p3, :cond_0

    .line 2627
    iget-wide v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBooleans:J

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBooleans:J

    goto :goto_0

    .line 2629
    :cond_0
    iget-wide v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBooleans:J

    not-long p1, p1

    and-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBooleans:J

    :goto_0
    return-object p0
.end method

.method public final setBoolean2(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    if-eqz p3, :cond_0

    .line 2640
    iget-wide v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBooleans2:J

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBooleans2:J

    goto :goto_0

    .line 2642
    :cond_0
    iget-wide v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBooleans2:J

    not-long p1, p1

    and-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBooleans2:J

    :goto_0
    return-object p0
.end method

.method public setCategory(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 1916
    iput p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->category:I

    return-object p0
.end method

.method public bridge synthetic setCategory(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setCategory(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setClassLoaderName(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 1922
    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->classLoaderName:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setClassLoaderName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setClassLoaderName(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setClearUserDataAllowed(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/16 v0, 0x800

    .line 1835
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setClearUserDataAllowed(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setClearUserDataAllowed(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setClearUserDataOnFailedRestoreAllowed(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/32 v0, 0x40000000

    .line 1840
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setClearUserDataOnFailedRestoreAllowed(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setClearUserDataOnFailedRestoreAllowed(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setCleartextTrafficAllowed(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/16 v0, 0x2000

    .line 2479
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setCleartextTrafficAllowed(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setCleartextTrafficAllowed(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setCompatibleWidthLimitDp(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 1934
    iput p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->compatibleWidthLimitDp:I

    return-object p0
.end method

.method public bridge synthetic setCompatibleWidthLimitDp(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setCompatibleWidthLimitDp(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setCompileSdkVersion(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 1940
    iput p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->compileSdkVersion:I

    return-object p0
.end method

.method public setCompileSdkVersionCodeName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 1946
    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->compileSdkVersionCodeName:Ljava/lang/String;

    return-object p0
.end method

.method public setCoreApp(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/high16 v0, 0x10000000000000L

    .line 3024
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setCoreApp(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setCoreApp(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setCrossProfile(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide v0, 0x80000000000L

    .line 1952
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setCrossProfile(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setCrossProfile(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setDataExtractionRulesResourceId(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 1957
    iput p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->dataExtractionRules:I

    return-object p0
.end method

.method public bridge synthetic setDataExtractionRulesResourceId(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setDataExtractionRulesResourceId(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setDebuggable(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/16 v0, 0x80

    .line 1963
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setDebuggable(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setDebuggable(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setDeclaredHavingCode(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/16 v0, 0x200

    .line 2016
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setDeclaredHavingCode(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setDeclaredHavingCode(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setDefaultToDeviceProtectedStorage(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/32 v0, 0x4000000

    .line 2825
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    return-object p0
.end method

.method public bridge synthetic setDefaultToDeviceProtectedStorage(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setDefaultToDeviceProtectedStorage(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setDefaultToDeviceProtectedStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setDefaultToDeviceProtectedStorage(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setDescriptionResourceId(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 1968
    iput p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->descriptionRes:I

    return-object p0
.end method

.method public bridge synthetic setDescriptionResourceId(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setDescriptionResourceId(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setDirectBootAware(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/32 v0, 0x8000000

    .line 2831
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    return-object p0
.end method

.method public bridge synthetic setDirectBootAware(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setDirectBootAware(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setDirectBootAware(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setDirectBootAware(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setEnabled(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide v0, 0x100000000000L

    .line 1974
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setEnabled(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setEnabled(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setExternalStorage(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/16 v0, 0x1

    .line 1979
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setExternalStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setExternalStorage(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setExtraLargeScreensSupported(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2387
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->supportsExtraLargeScreens:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic setExtraLargeScreensSupported(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setExtraLargeScreensSupported(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setExtractNativeLibrariesRequested(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/32 v0, 0x20000

    .line 1984
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setExtractNativeLibrariesRequested(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setExtractNativeLibrariesRequested(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setFactoryTest(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/high16 v0, 0x40000000000000L

    .line 3515
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    return-object p0
.end method

.method public bridge synthetic setFactoryTest(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setFactoryTest(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setForceQueryable(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide v0, 0x40000000000L

    .line 1989
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setForceQueryable(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setForceQueryable(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setFullBackupContentResourceId(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 1994
    iput p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->fullBackupContent:I

    return-object p0
.end method

.method public bridge synthetic setFullBackupContentResourceId(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setFullBackupContentResourceId(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setFullBackupOnly(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/16 v0, 0x20

    .line 2000
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setFullBackupOnly(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setFullBackupOnly(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setGame(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/32 v0, 0x40000

    .line 2005
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setGame(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setGame(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setGwpAsanMode(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 2010
    iput p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->gwpAsanMode:I

    return-object p0
.end method

.method public bridge synthetic setGwpAsanMode(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setGwpAsanMode(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setHardwareAccelerated(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/16 v0, 0x2

    .line 1900
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setHardwareAccelerated(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setHardwareAccelerated(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setHasDomainUrls(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/32 v0, 0x400000

    .line 2021
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setHasDomainUrls(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setHasDomainUrls(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setIconResourceId(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 2031
    iput p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->iconRes:I

    return-object p0
.end method

.method public bridge synthetic setIconResourceId(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setIconResourceId(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setInstallLocation(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 2037
    iput p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->installLocation:I

    return-object p0
.end method

.method public bridge synthetic setInstallLocation(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setInstallLocation(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setIsolatedSplitLoading(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/32 v0, 0x200000

    .line 2043
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setKillAfterRestoreAllowed(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/16 v0, 0x8

    .line 2048
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setKillAfterRestoreAllowed(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setKillAfterRestoreAllowed(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setKnownActivityEmbeddingCerts(Ljava/util/Set;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 2053
    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    return-object p0
.end method

.method public setLabelResourceId(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 2059
    iput p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->labelRes:I

    return-object p0
.end method

.method public bridge synthetic setLabelResourceId(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setLabelResourceId(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setLargeHeap(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/16 v0, 0x1000

    .line 2065
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setLargeHeap(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setLargeHeap(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setLargeScreensSupported(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2397
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->supportsLargeScreens:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic setLargeScreensSupported(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setLargeScreensSupported(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setLargestWidthLimitDp(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 2070
    iput p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->largestWidthLimitDp:I

    return-object p0
.end method

.method public bridge synthetic setLargestWidthLimitDp(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setLargestWidthLimitDp(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setLeavingSharedUser(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/high16 v0, 0x8000000000000L

    .line 2076
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setLeavingSharedUser(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setLeavingSharedUser(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setLocaleConfigResourceId(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 2081
    iput p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mLocaleConfigRes:I

    return-object p0
.end method

.method public bridge synthetic setLocaleConfigResourceId(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setLocaleConfigResourceId(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setLogoResourceId(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 2087
    iput p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->logo:I

    return-object p0
.end method

.method public bridge synthetic setLogoResourceId(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setLogoResourceId(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setManageSpaceActivityName(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 2093
    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->manageSpaceActivityName:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setManageSpaceActivityName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setManageSpaceActivityName(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setMaxAspectRatio(F)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 2099
    iput p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->maxAspectRatio:F

    return-object p0
.end method

.method public bridge synthetic setMaxAspectRatio(F)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setMaxAspectRatio(F)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setMaxSdkVersion(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 2105
    iput p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->maxSdkVersion:I

    return-object p0
.end method

.method public bridge synthetic setMaxSdkVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setMaxSdkVersion(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setMemtagMode(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 2111
    iput p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->memtagMode:I

    return-object p0
.end method

.method public bridge synthetic setMemtagMode(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setMemtagMode(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setMetaData(Landroid/os/Bundle;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 2117
    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->metaData:Landroid/os/Bundle;

    return-object p0
.end method

.method public bridge synthetic setMetaData(Landroid/os/Bundle;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setMetaData(Landroid/os/Bundle;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setMinAspectRatio(F)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 2123
    iput p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->minAspectRatio:F

    return-object p0
.end method

.method public bridge synthetic setMinAspectRatio(F)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setMinAspectRatio(F)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setMinExtensionVersions(Landroid/util/SparseIntArray;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 2129
    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->minExtensionVersions:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method public bridge synthetic setMinExtensionVersions(Landroid/util/SparseIntArray;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setMinExtensionVersions(Landroid/util/SparseIntArray;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setMinSdkVersion(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 2135
    iput p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->minSdkVersion:I

    return-object p0
.end method

.method public bridge synthetic setMinSdkVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setMinSdkVersion(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setMultiArch(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/32 v0, 0x10000

    .line 2141
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setMultiArch(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setMultiArch(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setNativeHeapZeroInitialized(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 2147
    iput p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeHeapZeroInitialized:I

    return-object p0
.end method

.method public bridge synthetic setNativeHeapZeroInitialized(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setNativeHeapZeroInitialized(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setNativeLibraryDir(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 2940
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryDir:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setNativeLibraryDir(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setNativeLibraryDir(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setNativeLibraryRootDir(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 2946
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryRootDir:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setNativeLibraryRootDir(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setNativeLibraryRootDir(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setNativeLibraryRootRequiresIsa(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 3503
    iput-boolean p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryRootRequiresIsa:Z

    return-object p0
.end method

.method public bridge synthetic setNativeLibraryRootRequiresIsa(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setNativeLibraryRootRequiresIsa(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setNetworkSecurityConfigResourceId(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 2153
    iput p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->networkSecurityConfigRes:I

    return-object p0
.end method

.method public bridge synthetic setNetworkSecurityConfigResourceId(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setNetworkSecurityConfigResourceId(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setNonLocalizedLabel(Ljava/lang/CharSequence;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2159
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nonLocalizedLabel:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public bridge synthetic setNonLocalizedLabel(Ljava/lang/CharSequence;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setNonLocalizedLabel(Ljava/lang/CharSequence;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setNonSdkApiRequested(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide v0, 0x200000000L

    .line 2484
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setNonSdkApiRequested(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setNonSdkApiRequested(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setNormalScreensSupported(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2407
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->supportsNormalScreens:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic setNormalScreensSupported(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setNormalScreensSupported(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setOdm(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/high16 v0, 0x2000000000000000L

    .line 3557
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    return-object p0
.end method

.method public bridge synthetic setOdm(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setOdm(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setOem(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/high16 v0, 0x400000000000000L

    .line 3539
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    return-object p0
.end method

.method public bridge synthetic setOem(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setOem(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setOnBackInvokedCallbackEnabled(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 2

    const-wide/high16 v0, 0x4000000000000L

    .line 2165
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    return-object p0
.end method

.method public setOverlayCategory(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 2176
    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->overlayCategory:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setOverlayCategory(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setOverlayCategory(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setOverlayIsStatic(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide v0, 0x8000000000L

    .line 2182
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setOverlayIsStatic(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setOverlayIsStatic(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setOverlayPriority(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 2187
    iput p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->overlayPriority:I

    return-object p0
.end method

.method public bridge synthetic setOverlayPriority(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setOverlayPriority(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setOverlayTarget(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 2193
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->overlayTarget:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setOverlayTarget(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setOverlayTarget(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setOverlayTargetOverlayableName(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 2200
    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->overlayTargetOverlayableName:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setOverlayTargetOverlayableName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setOverlayTargetOverlayableName(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 4

    .line 2863
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    .line 2865
    iget-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->permissions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 2867
    iget-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->permissions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedComponent;

    iget-object v3, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setPackageName(Lcom/android/server/pm/pkg/component/ParsedComponent;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2870
    :cond_0
    iget-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->permissionGroups:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    move v1, v0

    :goto_1
    if-ge v1, p1, :cond_1

    .line 2872
    iget-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->permissionGroups:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedComponent;

    iget-object v3, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setPackageName(Lcom/android/server/pm/pkg/component/ParsedComponent;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2875
    :cond_1
    iget-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    move v1, v0

    :goto_2
    if-ge v1, p1, :cond_2

    .line 2877
    iget-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedComponent;

    iget-object v3, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setPackageName(Lcom/android/server/pm/pkg/component/ParsedComponent;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2880
    :cond_2
    iget-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    move v1, v0

    :goto_3
    if-ge v1, p1, :cond_3

    .line 2882
    iget-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedComponent;

    iget-object v3, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setPackageName(Lcom/android/server/pm/pkg/component/ParsedComponent;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2885
    :cond_3
    iget-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    move v1, v0

    :goto_4
    if-ge v1, p1, :cond_4

    .line 2887
    iget-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedComponent;

    iget-object v3, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setPackageName(Lcom/android/server/pm/pkg/component/ParsedComponent;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2890
    :cond_4
    iget-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    move v1, v0

    :goto_5
    if-ge v1, p1, :cond_5

    .line 2892
    iget-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedComponent;

    iget-object v3, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setPackageName(Lcom/android/server/pm/pkg/component/ParsedComponent;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2895
    :cond_5
    iget-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->instrumentations:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_6
    if-ge v0, p1, :cond_6

    .line 2897
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->instrumentations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedComponent;

    iget-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setPackageName(Lcom/android/server/pm/pkg/component/ParsedComponent;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_6
    return-object p0
.end method

.method public bridge synthetic setPackageName(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setPackageName(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setPartiallyDirectBootAware(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/32 v0, 0x10000000

    .line 2206
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setPartiallyDirectBootAware(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setPartiallyDirectBootAware(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setPath(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 2855
    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mPath:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setPath(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setPath(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setPermission(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 2211
    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->permission:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setPermission(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setPersistent(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/16 v0, 0x40

    .line 2819
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    return-object p0
.end method

.method public bridge synthetic setPersistent(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setPersistent(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setPersistent(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setPersistent(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setPreserveLegacyExternalStorage(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide v0, 0x2000000000L

    .line 2217
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setPreserveLegacyExternalStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setPreserveLegacyExternalStorage(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 2952
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->primaryCpuAbi:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setPrivileged(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/high16 v0, 0x200000000000000L

    .line 3533
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    return-object p0
.end method

.method public bridge synthetic setPrivileged(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setPrivileged(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setProcessName(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 2222
    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->processName:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setProcessName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setProcessName(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setProcesses(Ljava/util/Map;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 2228
    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->processes:Ljava/util/Map;

    return-object p0
.end method

.method public bridge synthetic setProcesses(Ljava/util/Map;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setProcesses(Ljava/util/Map;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setProduct(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/high16 v0, 0x1000000000000000L

    .line 3551
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    return-object p0
.end method

.method public bridge synthetic setProduct(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setProduct(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setProfileable(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    xor-int/lit8 p1, p1, 0x1

    const-wide v0, 0x200000000000L

    .line 2234
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setProfileable(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setProfileable(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setProfileableByShell(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/32 v0, 0x800000

    .line 2239
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setProfileableByShell(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setProfileableByShell(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setRequestForegroundServiceExemption(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide v0, 0x400000000000L

    .line 2244
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setRequestForegroundServiceExemption(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setRequestForegroundServiceExemption(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setRequestLegacyExternalStorage(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide v0, 0x100000000L

    .line 2249
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setRequestLegacyExternalStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setRequestLegacyExternalStorage(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setRequestRawExternalStorageAccess(Ljava/lang/Boolean;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 2254
    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->requestRawExternalStorageAccess:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic setRequestRawExternalStorageAccess(Ljava/lang/Boolean;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setRequestRawExternalStorageAccess(Ljava/lang/Boolean;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setRequiredAccountType(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 2260
    invoke-static {p1}, Landroid/text/TextUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->requiredAccountType:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setRequiredAccountType(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setRequiredAccountType(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setRequiredForAllUsers(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide v0, 0x4000000000L

    .line 2266
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setRequiredForAllUsers(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setRequiredForAllUsers(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setRequiresSmallestWidthDp(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 2271
    iput p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->requiresSmallestWidthDp:I

    return-object p0
.end method

.method public bridge synthetic setRequiresSmallestWidthDp(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setRequiresSmallestWidthDp(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setResetEnabledSettingsOnAppDataCleared(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 2

    const-wide/high16 v0, 0x1000000000000L

    .line 2278
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    return-object p0
.end method

.method public setResizeable(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2289
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->resizeable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic setResizeable(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setResizeable(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setResizeableActivity(Ljava/lang/Boolean;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 2295
    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->resizeableActivity:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic setResizeableActivity(Ljava/lang/Boolean;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setResizeableActivity(Ljava/lang/Boolean;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setResizeableActivityViaSdkVersion(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/32 v0, 0x20000000

    .line 2301
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setResizeableActivityViaSdkVersion(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setResizeableActivityViaSdkVersion(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setResourceOverlay(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/32 v0, 0x100000

    .line 2171
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setResourceOverlay(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setResourceOverlay(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setRestoreAnyVersion(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/16 v0, 0x10

    .line 2306
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setRestoreAnyVersion(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setRestoreAnyVersion(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public varargs setRestrictUpdateHash([B)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 2813
    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->restrictUpdateHash:[B

    return-object p0
.end method

.method public bridge synthetic setRestrictUpdateHash([B)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setRestrictUpdateHash([B)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setRestrictUpdateHash([B)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setRestrictUpdateHash([B)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setRestrictedAccountType(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 2311
    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->restrictedAccountType:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setRestrictedAccountType(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setRestrictedAccountType(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setRoundIconResourceId(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 2317
    iput p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->roundIconRes:I

    return-object p0
.end method

.method public bridge synthetic setRoundIconResourceId(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setRoundIconResourceId(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setRtlSupported(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/16 v0, 0x4000

    .line 2413
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setRtlSupported(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setRtlSupported(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setSaveStateDisallowed(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide v0, 0x800000000L

    .line 1911
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setSaveStateDisallowed(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setSaveStateDisallowed(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setSdkLibVersionMajor(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 2329
    iput p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sdkLibVersionMajor:I

    return-object p0
.end method

.method public bridge synthetic setSdkLibVersionMajor(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setSdkLibVersionMajor(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setSdkLibrary(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/high16 v0, 0x2000000000000L

    .line 2335
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setSdkLibrary(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setSdkLibrary(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setSdkLibraryName(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 2323
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sdkLibraryName:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setSdkLibraryName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setSdkLibraryName(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 2958
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->secondaryCpuAbi:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setSecondaryNativeLibraryDir(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 2964
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->secondaryNativeLibraryDir:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setSecondaryNativeLibraryDir(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setSecondaryNativeLibraryDir(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setSharedUserId(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 2340
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sharedUserId:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setSharedUserId(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setSharedUserId(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setSharedUserLabelResourceId(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 2346
    iput p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sharedUserLabel:I

    return-object p0
.end method

.method public bridge synthetic setSharedUserLabelResourceId(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setSharedUserLabelResourceId(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setSignedWithPlatformKey(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 3563
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    return-object p0
.end method

.method public bridge synthetic setSignedWithPlatformKey(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setSignedWithPlatformKey(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 2807
    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->signingDetails:Landroid/content/pm/SigningDetails;

    return-object p0
.end method

.method public bridge synthetic setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setSmallScreensSupported(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2422
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->supportsSmallScreens:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic setSmallScreensSupported(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setSmallScreensSupported(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setSplitClassLoaderName(ILjava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    .line 2352
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->splitClassLoaderNames:[Ljava/lang/String;

    aput-object p2, v0, p1

    return-object p0
.end method

.method public bridge synthetic setSplitClassLoaderName(ILjava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setSplitClassLoaderName(ILjava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setSplitCodePaths([Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 3

    .line 2970
    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->splitCodePaths:[Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 2972
    array-length p1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 2974
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->splitCodePaths:[Ljava/lang/String;

    aget-object v2, v1, v0

    invoke-static {v2}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic setSplitCodePaths([Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setSplitCodePaths([Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setSplitHasCode(IZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    .line 2358
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->splitFlags:[I

    if-eqz p2, :cond_0

    .line 2359
    aget p2, v0, p1

    or-int/lit8 p2, p2, 0x4

    goto :goto_0

    .line 2360
    :cond_0
    aget p2, v0, p1

    and-int/lit8 p2, p2, -0x5

    :goto_0
    aput p2, v0, p1

    return-object p0
.end method

.method public bridge synthetic setSplitHasCode(IZ)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setSplitHasCode(IZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setStaticSharedLibrary(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/32 v0, 0x80000

    .line 2378
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setStaticSharedLibrary(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setStaticSharedLibrary(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setStaticSharedLibraryName(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 2366
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->staticSharedLibraryName:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setStaticSharedLibraryName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setStaticSharedLibraryName(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setStaticSharedLibraryVersion(J)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 2372
    iput-wide p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->staticSharedLibVersion:J

    return-object p0
.end method

.method public bridge synthetic setStaticSharedLibraryVersion(J)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setStaticSharedLibraryVersion(J)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setStub(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/16 v0, 0x1

    .line 3497
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean2(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    return-object p0
.end method

.method public bridge synthetic setStub(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setStub(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setSystem(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/high16 v0, 0x20000000000000L

    .line 3509
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    return-object p0
.end method

.method public bridge synthetic setSystem(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setSystem(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setSystemExt(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/high16 v0, 0x100000000000000L

    .line 3527
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    return-object p0
.end method

.method public bridge synthetic setSystemExt(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setSystemExt(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setTargetSandboxVersion(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 2428
    iput p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->targetSandboxVersion:I

    return-object p0
.end method

.method public bridge synthetic setTargetSandboxVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setTargetSandboxVersion(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setTargetSdkVersion(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 2434
    iput p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->targetSdkVersion:I

    return-object p0
.end method

.method public bridge synthetic setTargetSdkVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setTargetSdkVersion(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setTaskAffinity(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 2440
    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->taskAffinity:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setTaskAffinity(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setTaskAffinity(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setTaskReparentingAllowed(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/16 v0, 0x400

    .line 1850
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setTaskReparentingAllowed(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setTaskReparentingAllowed(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setTestOnly(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/32 v0, 0x8000

    .line 2446
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setTestOnly(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setTestOnly(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setThemeResourceId(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 2451
    iput p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->theme:I

    return-object p0
.end method

.method public bridge synthetic setThemeResourceId(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setThemeResourceId(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setUiOptions(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 2457
    iput p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->uiOptions:I

    return-object p0
.end method

.method public bridge synthetic setUiOptions(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setUiOptions(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setUid(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 3569
    iput p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->uid:I

    return-object p0
.end method

.method public bridge synthetic setUid(I)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setUid(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setUpgradeKeySets(Ljava/util/Set;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 2463
    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->upgradeKeySets:Ljava/util/Set;

    return-object p0
.end method

.method public bridge synthetic setUpgradeKeySets(Ljava/util/Set;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setUpgradeKeySets(Ljava/util/Set;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setUseEmbeddedDex(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/32 v0, 0x2000000

    .line 2474
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setUseEmbeddedDex(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setUseEmbeddedDex(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setUserDataFragile(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide v0, 0x400000000L

    .line 2026
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setUserDataFragile(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setUserDataFragile(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setVendor(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/high16 v0, 0x800000000000000L

    .line 3545
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    return-object p0
.end method

.method public bridge synthetic setVendor(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setVendor(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setVersionCode(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 3029
    iput p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->versionCode:I

    return-object p0
.end method

.method public bridge synthetic setVersionCode(I)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setVersionCode(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setVersionCodeMajor(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 3035
    iput p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->versionCodeMajor:I

    return-object p0
.end method

.method public bridge synthetic setVersionCodeMajor(I)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setVersionCodeMajor(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setVersionName(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 2489
    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->versionName:Ljava/lang/String;

    return-object p0
.end method

.method public setVisibleToInstantApps(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide v0, 0x20000000000L

    .line 2495
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setVisibleToInstantApps(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setVisibleToInstantApps(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setVmSafeMode(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    const-wide/16 v0, 0x100

    .line 2500
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(JZ)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setVmSafeMode(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setVmSafeMode(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setVolumeUuid(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 2505
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->volumeUuid:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setVolumeUuid(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setVolumeUuid(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setZygotePreloadName(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    .line 2511
    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->zygotePreloadName:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setZygotePreloadName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setZygotePreloadName(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public sortActivities()Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    .line 2517
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    sget-object v1, Lcom/android/server/pm/parsing/pkg/PackageImpl;->ORDER_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p0
.end method

.method public bridge synthetic sortActivities()Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sortActivities()Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public sortReceivers()Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    .line 2523
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    sget-object v1, Lcom/android/server/pm/parsing/pkg/PackageImpl;->ORDER_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p0
.end method

.method public bridge synthetic sortReceivers()Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sortReceivers()Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public sortServices()Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    .line 2529
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    sget-object v1, Lcom/android/server/pm/parsing/pkg/PackageImpl;->ORDER_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p0
.end method

.method public bridge synthetic sortServices()Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    .line 110
    invoke-virtual {p0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sortServices()Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public toAppInfoWithoutState()Landroid/content/pm/ApplicationInfo;
    .locals 2

    .line 3041
    invoke-virtual {p0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->toAppInfoWithoutStateWithoutFlags()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 3042
    iget v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBaseAppInfoFlags:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3043
    iget v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBaseAppInfoPrivateFlags:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3044
    iget v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBaseAppInfoPrivateFlagsExt:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    .line 3045
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryDir:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 3046
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryRootDir:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootDir:Ljava/lang/String;

    .line 3047
    iget-boolean v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryRootRequiresIsa:Z

    iput-boolean v1, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootRequiresIsa:Z

    .line 3048
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->primaryCpuAbi:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 3049
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->secondaryCpuAbi:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 3050
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->secondaryNativeLibraryDir:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    const-string v1, ":complete"

    .line 3051
    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    .line 3052
    iget p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->uid:I

    iput p0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    return-object v0
.end method

.method public toAppInfoWithoutStateWithoutFlags()Landroid/content/pm/ApplicationInfo;
    .locals 3

    .line 2534
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 2539
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->appComponentFactory:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->appComponentFactory:Ljava/lang/String;

    .line 2540
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->backupAgentName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 2541
    iget v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->banner:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->banner:I

    .line 2542
    iget v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->category:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 2543
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->classLoaderName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    .line 2544
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->className:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 2545
    iget v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->compatibleWidthLimitDp:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    .line 2546
    iget v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->compileSdkVersion:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->compileSdkVersion:I

    .line 2547
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->compileSdkVersionCodeName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->compileSdkVersionCodename:Ljava/lang/String;

    .line 2549
    invoke-virtual {p0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->isCrossProfile()Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/ApplicationInfo;->crossProfile:Z

    .line 2551
    iget v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->descriptionRes:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    const-wide v1, 0x100000000000L

    .line 2553
    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(J)Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 2555
    iget v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->fullBackupContent:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    .line 2556
    iget v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->dataExtractionRules:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->dataExtractionRulesRes:I

    .line 2561
    sget-boolean v1, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->roundIconRes:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->iconRes:I

    :goto_0
    iput v1, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 2562
    iget v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->iconRes:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->iconRes:I

    .line 2563
    iget v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->roundIconRes:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->roundIconRes:I

    .line 2564
    iget v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->installLocation:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->installLocation:I

    .line 2565
    iget v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->labelRes:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 2566
    iget v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->largestWidthLimitDp:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 2567
    iget v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->logo:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->logo:I

    .line 2568
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->manageSpaceActivityName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    .line 2569
    iget v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->maxAspectRatio:F

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->maxAspectRatio:F

    .line 2570
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 2571
    iget v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->minAspectRatio:F

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->minAspectRatio:F

    .line 2572
    iget v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->minSdkVersion:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    .line 2573
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->className:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    .line 2577
    iget v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->networkSecurityConfigRes:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->networkSecurityConfigRes:I

    .line 2578
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 2579
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2580
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->permission:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    .line 2582
    invoke-virtual {p0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getProcessName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 2583
    iget v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->requiresSmallestWidthDp:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    .line 2592
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->splitClassLoaderNames:[Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    .line 2593
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->splitDependencies:Landroid/util/SparseArray;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 2594
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->splitDependencies:Landroid/util/SparseArray;

    goto :goto_2

    :cond_2
    :goto_1
    move-object v1, v2

    :goto_2
    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->splitDependencies:Landroid/util/SparseArray;

    .line 2595
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->splitNames:[Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    .line 2596
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mStorageUuid:Ljava/util/UUID;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    .line 2597
    iget v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->targetSandboxVersion:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->targetSandboxVersion:I

    .line 2598
    iget v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->targetSdkVersion:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 2599
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->taskAffinity:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    .line 2600
    iget v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->theme:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->theme:I

    .line 2602
    iget v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->uiOptions:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    .line 2603
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->volumeUuid:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    .line 2604
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->zygotePreloadName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->zygotePreloadName:Ljava/lang/String;

    .line 2605
    iget v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->gwpAsanMode:I

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setGwpAsanMode(I)V

    .line 2606
    iget v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->memtagMode:I

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setMemtagMode(I)V

    .line 2607
    iget v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeHeapZeroInitialized:I

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setNativeHeapZeroInitialized(I)V

    .line 2608
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->requestRawExternalStorageAccess:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setRequestRawExternalStorageAccess(Ljava/lang/Boolean;)V

    .line 2609
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBaseApkPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setBaseCodePath(Ljava/lang/String;)V

    .line 2610
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBaseApkPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setBaseResourcePath(Ljava/lang/String;)V

    .line 2611
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setCodePath(Ljava/lang/String;)V

    .line 2612
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setResourcePath(Ljava/lang/String;)V

    .line 2613
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->splitCodePaths:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_3

    move-object v1, v2

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->splitCodePaths:[Ljava/lang/String;

    :goto_3
    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setSplitCodePaths([Ljava/lang/String;)V

    .line 2614
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->splitCodePaths:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    iget-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->splitCodePaths:[Ljava/lang/String;

    :goto_4
    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->setSplitResourcePaths([Ljava/lang/String;)V

    .line 2615
    iget-wide v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mLongVersionCode:J

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ApplicationInfo;->setVersionCode(J)V

    .line 2616
    invoke-virtual {p0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->buildAppClassNamesByProcess()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setAppClassNamesByProcess(Landroid/util/ArrayMap;)V

    .line 2617
    iget v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mLocaleConfigRes:I

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setLocaleConfigRes(I)V

    .line 2618
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2619
    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    invoke-virtual {v0, p0}, Landroid/content/pm/ApplicationInfo;->setKnownActivityEmbeddingCerts(Ljava/util/Set;)V

    :cond_5
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 835
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 3063
    sget-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->supportsSmallScreens:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->parcel(Ljava/lang/Boolean;Landroid/os/Parcel;I)V

    .line 3064
    sget-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->supportsNormalScreens:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->parcel(Ljava/lang/Boolean;Landroid/os/Parcel;I)V

    .line 3065
    sget-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->supportsLargeScreens:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->parcel(Ljava/lang/Boolean;Landroid/os/Parcel;I)V

    .line 3066
    sget-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->supportsExtraLargeScreens:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->parcel(Ljava/lang/Boolean;Landroid/os/Parcel;I)V

    .line 3067
    sget-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->resizeable:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->parcel(Ljava/lang/Boolean;Landroid/os/Parcel;I)V

    .line 3068
    sget-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->anyDensity:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->parcel(Ljava/lang/Boolean;Landroid/os/Parcel;I)V

    .line 3069
    iget v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->versionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3070
    iget v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->versionCodeMajor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3071
    iget v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->baseRevisionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3072
    sget-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 3073
    iget v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->compileSdkVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3074
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->compileSdkVersionCodeName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3075
    sget-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 3076
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBaseApkPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3077
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->restrictedAccountType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3078
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->requiredAccountType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3079
    sget-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->overlayTarget:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 3080
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->overlayTargetOverlayableName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3081
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->overlayCategory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3082
    iget v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->overlayPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3083
    sget-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedStringValueMap:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;

    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->overlayables:Ljava/util/Map;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;->parcel(Ljava/util/Map;Landroid/os/Parcel;I)V

    .line 3084
    sget-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sdkLibraryName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 3085
    iget v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sdkLibVersionMajor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3086
    sget-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->staticSharedLibraryName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 3087
    iget-wide v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->staticSharedLibVersion:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3088
    sget-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->libraryNames:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    .line 3089
    sget-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    .line 3090
    sget-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesOptionalLibraries:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    .line 3091
    sget-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesNativeLibraries:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    .line 3092
    sget-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    .line 3094
    sget-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesStaticLibraries:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    .line 3095
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesStaticLibrariesVersions:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 3096
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 3097
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 3099
    :cond_0
    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v2

    .line 3100
    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 3101
    aget-object v3, v3, v0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3105
    :cond_1
    :goto_1
    sget-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v3, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesSdkLibraries:Ljava/util/List;

    invoke-virtual {v0, v3, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    .line 3106
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesVersionsMajor:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 3107
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesCertDigests:[[Ljava/lang/String;

    if-nez v0, :cond_2

    .line 3108
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 3110
    :cond_2
    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3111
    :goto_2
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesSdkLibrariesCertDigests:[[Ljava/lang/String;

    array-length v1, v0

    if-ge v2, v1, :cond_3

    .line 3112
    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3116
    :cond_3
    :goto_3
    sget-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sharedUserId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 3117
    iget v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sharedUserLabel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3118
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->configPreferences:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3119
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->reqFeatures:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3120
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->featureGroups:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3121
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->restrictUpdateHash:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3122
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->originalPackages:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 3123
    sget-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->adoptPermissions:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    .line 3124
    sget-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->requestedPermissions:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    .line 3125
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesPermissions:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    .line 3126
    sget-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->implicitPermissions:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    .line 3127
    sget-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->upgradeKeySets:Ljava/util/Set;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->parcel(Ljava/util/Set;Landroid/os/Parcel;I)V

    .line 3128
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->keySetMapping:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->writeKeySetMapping(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 3129
    sget-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->protectedBroadcasts:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    .line 3130
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    .line 3131
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->apexSystemServices:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    .line 3132
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    .line 3133
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    .line 3134
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    .line 3135
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->attributions:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    .line 3136
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->permissions:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    .line 3137
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->permissionGroups:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    .line 3138
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->instrumentations:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    .line 3139
    sget-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForIntentInfoPairs:Lcom/android/server/pm/pkg/parsing/ParsingUtils$StringPairListParceler;

    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->preferredActivityFilters:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingUtils$StringPairListParceler;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    .line 3140
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->processes:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 3141
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->metaData:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 3142
    sget-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 3143
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->signingDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 3144
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3145
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->queriesIntents:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3146
    sget-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->queriesPackages:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    .line 3147
    sget-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->queriesProviders:Ljava/util/Set;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;->parcel(Ljava/util/Set;Landroid/os/Parcel;I)V

    .line 3148
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->appComponentFactory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3149
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->backupAgentName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3150
    iget v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->banner:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3151
    iget v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->category:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3152
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->classLoaderName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3153
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->className:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3154
    iget v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->compatibleWidthLimitDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3155
    iget v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->descriptionRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3156
    iget v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->fullBackupContent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3157
    iget v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->dataExtractionRules:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3158
    iget v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->iconRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3159
    iget v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->installLocation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3160
    iget v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->labelRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3161
    iget v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->largestWidthLimitDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3162
    iget v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->logo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3163
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3164
    iget v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->maxAspectRatio:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 3165
    iget v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->minAspectRatio:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 3166
    iget v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->minSdkVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3167
    iget v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->maxSdkVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3168
    iget v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->networkSecurityConfigRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3169
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 3170
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->permission:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3171
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3172
    iget v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->requiresSmallestWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3173
    iget v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->roundIconRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3174
    iget v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->targetSandboxVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3175
    iget v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->targetSdkVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3176
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->taskAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3177
    iget v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->theme:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3178
    iget v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->uiOptions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3179
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->zygotePreloadName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3180
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->splitClassLoaderNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 3181
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->splitCodePaths:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 3182
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->splitDependencies:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseArray(Landroid/util/SparseArray;)V

    .line 3183
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->splitFlags:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3184
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->splitNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 3185
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->splitRevisionCodes:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3186
    sget-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->resizeableActivity:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->parcel(Ljava/lang/Boolean;Landroid/os/Parcel;I)V

    .line 3187
    iget v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->autoRevokePermissions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3188
    sget-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mimeGroups:Ljava/util/Set;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;->parcel(Ljava/util/Set;Landroid/os/Parcel;I)V

    .line 3189
    iget v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->gwpAsanMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3190
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->minExtensionVersions:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseIntArray(Landroid/util/SparseIntArray;)V

    .line 3191
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mProperties:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 3192
    iget v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->memtagMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3193
    iget v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeHeapZeroInitialized:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3194
    sget-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->requestRawExternalStorageAccess:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->parcel(Ljava/lang/Boolean;Landroid/os/Parcel;I)V

    .line 3195
    iget v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mLocaleConfigRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3196
    sget-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->parcel(Ljava/util/Set;Landroid/os/Parcel;I)V

    .line 3197
    sget-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->manifestPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 3198
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3199
    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryRootDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3200
    iget-boolean v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryRootRequiresIsa:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3201
    sget-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->primaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 3202
    sget-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->secondaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 3203
    iget-object p2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->secondaryNativeLibraryDir:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3204
    iget p2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->uid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3205
    iget-wide v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBooleans:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3206
    iget-wide v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBooleans2:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
