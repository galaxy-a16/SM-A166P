.class public Lcom/android/server/enterprise/general/Typeface;
.super Ljava/lang/Object;
.source "Typeface.java"


# instance fields
.field public mFontPackageName:Ljava/lang/String;

.field public final mMonospaceFonts:Ljava/util/List;

.field public mName:Ljava/lang/String;

.field public final mSansFonts:Ljava/util/List;

.field public final mSerifFonts:Ljava/util/List;

.field public mTypefaceFilename:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/android/server/enterprise/general/Typeface;->mName:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/android/server/enterprise/general/Typeface;->mFontPackageName:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/android/server/enterprise/general/Typeface;->mTypefaceFilename:Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/general/Typeface;->mSansFonts:Ljava/util/List;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/general/Typeface;->mSerifFonts:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/general/Typeface;->mMonospaceFonts:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getFontPackageName()Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/server/enterprise/general/Typeface;->mFontPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/server/enterprise/general/Typeface;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getSansName()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/android/server/enterprise/general/Typeface;->mSansFonts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 151
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/general/Typeface;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getTypefaceFilename()Ljava/lang/String;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/android/server/enterprise/general/Typeface;->mTypefaceFilename:Ljava/lang/String;

    return-object p0
.end method

.method public setFontPackageName(Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/android/server/enterprise/general/Typeface;->mFontPackageName:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/android/server/enterprise/general/Typeface;->mName:Ljava/lang/String;

    return-void
.end method

.method public setTypefaceFilename(Ljava/lang/String;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/android/server/enterprise/general/Typeface;->mTypefaceFilename:Ljava/lang/String;

    return-void
.end method
