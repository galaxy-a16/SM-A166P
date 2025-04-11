.class public Lcom/android/server/wallpaper/WallpaperDataParser;
.super Ljava/lang/Object;
.source "WallpaperDataParser.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "WallpaperDataParser"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mImageWallpaper:Landroid/content/ComponentName;

.field public final mIsLockscreenLiveWallpaperEnabled:Z

.field public mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

.field public mSemWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

.field public final mWallpaperCropper:Lcom/android/server/wallpaper/WallpaperCropper;

.field public final mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wallpaper/WallpaperDisplayHelper;Lcom/android/server/wallpaper/WallpaperCropper;ZLcom/samsung/server/wallpaper/SemWallpaperManagerService;Landroid/app/SemWallpaperResourcesInfo;)V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperDataParser;->mContext:Landroid/content/Context;

    .line 122
    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperDataParser;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    .line 123
    iput-object p3, p0, Lcom/android/server/wallpaper/WallpaperDataParser;->mWallpaperCropper:Lcom/android/server/wallpaper/WallpaperCropper;

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1040605

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 124
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperDataParser;->mImageWallpaper:Landroid/content/ComponentName;

    .line 131
    iput-boolean p4, p0, Lcom/android/server/wallpaper/WallpaperDataParser;->mIsLockscreenLiveWallpaperEnabled:Z

    .line 135
    iput-object p5, p0, Lcom/android/server/wallpaper/WallpaperDataParser;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 136
    iput-object p6, p0, Lcom/android/server/wallpaper/WallpaperDataParser;->mSemWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    return-void
.end method


# virtual methods
.method public ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperData;)V
    .locals 0

    .line 496
    iget-object p0, p1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    if-ltz p0, :cond_0

    iget-object p0, p1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    .line 497
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-gez p0, :cond_1

    .line 498
    :cond_0
    iget-object p0, p1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_1
    return-void
.end method

.method public final getAttributeFloat(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;F)F
    .locals 0

    const/4 p0, 0x0

    .line 646
    invoke-interface {p1, p0, p2, p3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public final getAttributeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I
    .locals 0

    const/4 p0, 0x0

    .line 642
    invoke-interface {p1, p0, p2, p3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public isSameWithPreviousWallpaper(Lcom/android/server/wallpaper/WallpaperData;I)Z
    .locals 8

    const-string v0, " "

    const-string v1, "failed parsing "

    .line 156
    iget v2, p1, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    .line 158
    invoke-virtual {p0, v2, p2}, Lcom/android/server/wallpaper/WallpaperDataParser;->makeJournaledFile(II)Lcom/android/internal/util/JournaledFile;

    move-result-object p0

    .line 160
    invoke-virtual {p0}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object p0

    .line 161
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_0

    .line 162
    sget-object p0, Lcom/android/server/wallpaper/WallpaperDataParser;->TAG:Ljava/lang/String;

    const-string p1, "isSameWithPreviousWallpaper file is not exists."

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 165
    :cond_0
    new-instance p2, Lcom/android/server/wallpaper/WallpaperData;

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "wallpaper_orig"

    const-string/jumbo v5, "wallpaper"

    invoke-direct {p2, v2, v3, v4, v5}, Lcom/android/server/wallpaper/WallpaperData;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 168
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_5

    .line 169
    :try_start_1
    invoke-static {v3}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v4

    .line 173
    :cond_1
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 175
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "wp"

    .line 176
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 177
    iget-object v6, p2, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    const-string/jumbo v7, "width"

    invoke-interface {v4, v2, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setWidth(I)V

    .line 178
    iget-object v6, p2, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    const-string v7, "height"

    invoke-interface {v4, v2, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setHeight(I)V

    const-string/jumbo v6, "name"

    .line 179
    invoke-interface {v4, v2, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p2, Lcom/android/server/wallpaper/WallpaperData;->name:Ljava/lang/String;

    const-string v6, "component"

    .line 180
    invoke-interface {v4, v2, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 181
    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    goto :goto_0

    :cond_2
    move-object v6, v2

    :goto_0
    iput-object v6, p2, Lcom/android/server/wallpaper/WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    goto/16 :goto_6

    :catch_0
    move-exception v4

    goto :goto_1

    :catch_1
    move-exception v4

    goto :goto_2

    :catch_2
    move-exception v4

    goto :goto_3

    :catch_3
    move-exception v4

    goto :goto_4

    :catch_4
    move-exception v4

    goto/16 :goto_5

    :catch_5
    move-exception v4

    move-object v3, v2

    .line 194
    :goto_1
    sget-object v5, Lcom/android/server/wallpaper/WallpaperDataParser;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :catch_6
    move-exception v4

    move-object v3, v2

    .line 192
    :goto_2
    sget-object v5, Lcom/android/server/wallpaper/WallpaperDataParser;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catch_7
    move-exception v4

    move-object v3, v2

    .line 190
    :goto_3
    sget-object v5, Lcom/android/server/wallpaper/WallpaperDataParser;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catch_8
    move-exception v4

    move-object v3, v2

    .line 188
    :goto_4
    sget-object v5, Lcom/android/server/wallpaper/WallpaperDataParser;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catch_9
    move-exception v4

    move-object v3, v2

    .line 186
    :goto_5
    sget-object v5, Lcom/android/server/wallpaper/WallpaperDataParser;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :goto_6
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 198
    iget-object p0, p2, Lcom/android/server/wallpaper/WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-nez p0, :cond_4

    move-object p0, v2

    goto :goto_7

    :cond_4
    invoke-virtual {p0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object p0

    .line 199
    :goto_7
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-nez v0, :cond_5

    goto :goto_8

    :cond_5
    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    .line 201
    :goto_8
    sget-object v0, Lcom/android/server/wallpaper/WallpaperDataParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".xml file : width="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWidth()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " height="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 202
    invoke-virtual {v4}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getHeight()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " name="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p2, Lcom/android/server/wallpaper/WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " component="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 201
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "service : width="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWidth()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 206
    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 205
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-virtual {p2, p1}, Lcom/android/server/wallpaper/WallpaperData;->isSameWallpaperData(Lcom/android/server/wallpaper/WallpaperData;)Z

    move-result p0

    return p0
.end method

.method public loadSettingsLocked(IZLcom/android/server/wallpaper/WallpaperData;Lcom/android/server/wallpaper/WallpaperData;II)Lcom/android/server/wallpaper/WallpaperDataParser$WallpaperLoadingResult;
    .locals 23

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p6

    const-string/jumbo v4, "wp"

    const-string v5, " "

    const-string v6, "failed parsing "

    .line 270
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wallpaper/WallpaperDataParser;->makeJournaledFile(II)Lcom/android/internal/util/JournaledFile;

    move-result-object v7

    .line 272
    invoke-virtual {v7}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v7

    .line 276
    iget-boolean v8, v1, Lcom/android/server/wallpaper/WallpaperDataParser;->mIsLockscreenLiveWallpaperEnabled:Z

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v8, :cond_1

    and-int/lit8 v11, p5, 0x1

    if-eqz v11, :cond_0

    goto :goto_0

    :cond_0
    move v11, v10

    goto :goto_1

    :cond_1
    :goto_0
    move v11, v9

    :goto_1
    const/4 v12, 0x2

    if-eqz v8, :cond_3

    and-int/lit8 v13, p5, 0x2

    if-eqz v13, :cond_2

    goto :goto_2

    :cond_2
    move v13, v10

    goto :goto_3

    :cond_3
    :goto_2
    move v13, v9

    :goto_3
    if-eqz v8, :cond_4

    const/4 v8, 0x0

    const/4 v15, 0x0

    goto :goto_4

    :cond_4
    move-object/from16 v8, p3

    move-object/from16 v15, p4

    :goto_4
    if-nez v8, :cond_5

    if-eqz v11, :cond_5

    .line 301
    invoke-static/range {p1 .. p1}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v8

    .line 302
    invoke-static {v3, v10, v10}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getFileName(III)Ljava/lang/String;

    move-result-object v14

    .line 303
    invoke-static {v3, v10, v9}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getFileName(III)Ljava/lang/String;

    move-result-object v12

    .line 305
    sget-object v10, Lcom/android/server/wallpaper/WallpaperDataParser;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p3, v15

    const-string v15, "loadSettingsLocked: oriFileName : "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "loadSettingsLocked: cropFileName : "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    new-instance v9, Lcom/android/server/wallpaper/WallpaperData;

    invoke-direct {v9, v2, v8, v14, v12}, Lcom/android/server/wallpaper/WallpaperData;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x1

    .line 309
    iput-boolean v8, v9, Lcom/android/server/wallpaper/WallpaperData;->allowBackup:Z

    or-int/lit8 v8, v3, 0x1

    .line 310
    invoke-virtual {v9, v8}, Lcom/android/server/wallpaper/WallpaperData;->setWhich(I)V

    move-object v8, v9

    goto :goto_5

    :cond_5
    move-object/from16 p3, v15

    .line 314
    :goto_5
    iget-object v9, v1, Lcom/android/server/wallpaper/WallpaperDataParser;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;

    move-result-object v9

    .line 318
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_43
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_42
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_41
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_40
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3e

    :try_start_1
    invoke-direct {v10, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_43
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3d
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_3e

    .line 319
    :try_start_2
    invoke-static {v10}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v12
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_39
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_38
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_37
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_36
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_35
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_34

    move-object/from16 v15, p3

    .line 323
    :goto_6
    :try_start_3
    invoke-interface {v12}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v14
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_33
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_32
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_31
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_30
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2e

    move-object/from16 p4, v10

    const/4 v10, 0x2

    if-ne v14, v10, :cond_18

    .line 325
    :try_start_4
    invoke-interface {v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 326
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2a
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_29
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_28
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_27
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_26
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_25

    move-object/from16 v17, v8

    const-string v8, ")"

    move-object/from16 v18, v9

    const-string v9, "component"

    move-object/from16 v19, v5

    const-string v5, "kwp"

    if-eqz v16, :cond_7

    if-nez v11, :cond_6

    goto :goto_7

    :cond_6
    move/from16 v16, v11

    goto :goto_8

    .line 327
    :cond_7
    :goto_7
    :try_start_5
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2b
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_24
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_23
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_22
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_21
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_20

    if-eqz v16, :cond_12

    move/from16 v16, v11

    :try_start_6
    iget-boolean v11, v1, Lcom/android/server/wallpaper/WallpaperDataParser;->mIsLockscreenLiveWallpaperEnabled:Z

    if-eqz v11, :cond_11

    if-eqz v13, :cond_11

    .line 330
    :goto_8
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2c
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_15
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_14
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_13
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_12
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_11

    if-eqz v5, :cond_8

    if-nez v15, :cond_8

    move/from16 v20, v13

    const/4 v5, 0x1

    const/4 v11, 0x0

    .line 334
    :try_start_7
    invoke-static {v3, v5, v11}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getFileName(III)Ljava/lang/String;

    move-result-object v13

    .line 335
    invoke-static {v3, v5, v5}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getFileName(III)Ljava/lang/String;

    move-result-object v11
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_10
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_f
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_b

    .line 336
    :try_start_8
    new-instance v5, Lcom/android/server/wallpaper/WallpaperData;
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_2d
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_6

    move-object/from16 v21, v7

    :try_start_9
    invoke-static/range {p1 .. p1}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v7

    invoke-direct {v5, v2, v7, v13, v11}, Lcom/android/server/wallpaper/WallpaperData;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_2d
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_1e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_1d
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_1b

    or-int/lit8 v7, v3, 0x2

    .line 337
    :try_start_a
    invoke-virtual {v5, v7}, Lcom/android/server/wallpaper/WallpaperData;->setWhich(I)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_0

    move-object v15, v5

    goto/16 :goto_a

    :catch_0
    move-exception v0

    move-object/from16 v10, p4

    move-object v2, v0

    move-object v15, v5

    goto/16 :goto_1e

    :catch_1
    move-exception v0

    move-object/from16 v10, p4

    move-object v2, v0

    move-object v15, v5

    goto/16 :goto_f

    :catch_2
    move-exception v0

    move-object/from16 v10, p4

    move-object v2, v0

    move-object v15, v5

    goto/16 :goto_10

    :catch_3
    move-exception v0

    move-object/from16 v10, p4

    move-object v2, v0

    move-object v15, v5

    goto/16 :goto_11

    :catch_4
    move-exception v0

    move-object/from16 v10, p4

    move-object v2, v0

    move-object v15, v5

    goto/16 :goto_12

    :catch_5
    move-object/from16 v10, p4

    move-object v15, v5

    goto/16 :goto_24

    :catch_6
    move-exception v0

    move-object/from16 v21, v7

    goto/16 :goto_1d

    :catch_7
    move-exception v0

    goto/16 :goto_14

    :catch_8
    move-exception v0

    goto/16 :goto_16

    :catch_9
    move-exception v0

    goto/16 :goto_18

    :catch_a
    move-exception v0

    goto/16 :goto_1a

    :catch_b
    move-exception v0

    move-object/from16 v21, v7

    :goto_9
    move-object/from16 v10, p4

    move-object v2, v0

    move v8, v5

    goto/16 :goto_2a

    :catch_c
    move-exception v0

    move-object/from16 v10, p4

    move-object v2, v0

    move v8, v5

    move-object/from16 v9, v19

    goto/16 :goto_2c

    :catch_d
    move-exception v0

    move-object/from16 v10, p4

    move-object v2, v0

    move v8, v5

    move-object/from16 v9, v19

    goto/16 :goto_2e

    :catch_e
    move-exception v0

    move-object/from16 v10, p4

    move-object v2, v0

    move v8, v5

    move-object/from16 v9, v19

    goto/16 :goto_30

    :catch_f
    move-exception v0

    move-object/from16 v10, p4

    move-object v2, v0

    move v8, v5

    move-object/from16 v9, v19

    goto/16 :goto_32

    :catch_10
    move-object/from16 v10, p4

    move v8, v5

    goto/16 :goto_33

    :cond_8
    move-object/from16 v21, v7

    move/from16 v20, v13

    .line 341
    :goto_a
    :try_start_b
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    move/from16 v7, p2

    if-eqz v5, :cond_9

    move-object/from16 v5, v17

    goto :goto_b

    :cond_9
    move-object v5, v15

    .line 343
    :goto_b
    invoke-virtual {v1, v12, v5, v7}, Lcom/android/server/wallpaper/WallpaperDataParser;->parseWallpaperAttributes(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/wallpaper/WallpaperData;Z)V

    .line 345
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    const/4 v10, 0x1

    goto :goto_c

    :cond_a
    const/4 v10, 0x2

    .line 346
    :goto_c
    iget-object v11, v1, Lcom/android/server/wallpaper/WallpaperDataParser;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    or-int v13, v3, v10

    move-object/from16 v22, v4

    iget-object v4, v5, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v4}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v4

    invoke-virtual {v11, v5, v13, v4, v2}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->initializeThumnailFile(Lcom/android/server/wallpaper/WallpaperData;III)Ljava/io/File;

    const/4 v4, 0x2

    if-ne v10, v4, :cond_c

    .line 349
    invoke-virtual {v5}, Lcom/android/server/wallpaper/WallpaperData;->cropExists()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {v5}, Lcom/android/server/wallpaper/WallpaperData;->sourceExists()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 350
    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperDataParser;->mWallpaperCropper:Lcom/android/server/wallpaper/WallpaperCropper;

    invoke-virtual {v4, v5}, Lcom/android/server/wallpaper/WallpaperCropper;->generateCrop(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 352
    :cond_b
    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperDataParser;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v10, v5, Lcom/android/server/wallpaper/WallpaperData;->cropFile:Ljava/io/File;

    iget-object v11, v5, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v4, v10, v11}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->generateResizedBitmap(Ljava/io/File;Lcom/samsung/server/wallpaper/SemWallpaperData;)V

    :cond_c
    const/4 v4, 0x0

    .line 355
    invoke-interface {v12, v4, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_d

    .line 357
    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    goto :goto_d

    :cond_d
    const/4 v4, 0x0

    .line 358
    :goto_d
    iput-object v4, v5, Lcom/android/server/wallpaper/WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v4, :cond_e

    const-string v9, "android"

    .line 361
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 360
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 362
    :cond_e
    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperDataParser;->mImageWallpaper:Landroid/content/ComponentName;

    iput-object v4, v5, Lcom/android/server/wallpaper/WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    .line 366
    :cond_f
    iget-object v4, v5, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v4}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWallpaperHistoryList()Ljava/util/ArrayList;

    move-result-object v4

    if-nez v4, :cond_10

    .line 367
    iget-object v4, v5, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v4, v12}, Lcom/samsung/server/wallpaper/SemWallpaperData;->parseWallpaperHistoryInfo(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 371
    :cond_10
    iget-object v4, v5, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v4, v13}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setWhich(I)V

    .line 372
    sget-object v4, Lcom/android/server/wallpaper/WallpaperDataParser;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "wallpaperToParse.mSemWallpaperData.setWhich("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperDataParser;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v4, v4, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    iget v8, v5, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    iget-object v5, v5, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v4, v8, v5}, Lcom/samsung/server/wallpaper/LegibilityColor;->initSemWallpaperColors(ILcom/samsung/server/wallpaper/SemWallpaperData;)V

    goto/16 :goto_23

    :catch_11
    move-exception v0

    move-object/from16 v21, v7

    goto/16 :goto_1c

    :catch_12
    move-exception v0

    goto/16 :goto_13

    :catch_13
    move-exception v0

    goto/16 :goto_15

    :catch_14
    move-exception v0

    goto/16 :goto_17

    :catch_15
    move-exception v0

    goto/16 :goto_19

    :cond_11
    move-object/from16 v22, v4

    move-object/from16 v21, v7

    goto :goto_e

    :cond_12
    move-object/from16 v22, v4

    move-object/from16 v21, v7

    move/from16 v16, v11

    :goto_e
    move/from16 v20, v13

    move/from16 v7, p2

    .line 385
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    iget-boolean v4, v1, Lcom/android/server/wallpaper/WallpaperDataParser;->mIsLockscreenLiveWallpaperEnabled:Z

    if-nez v4, :cond_19

    or-int/lit8 v4, v3, 0x2

    .line 394
    invoke-static {v4}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSupportLock(I)Z

    move-result v5
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_2d
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_1e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_1d
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_b} :catch_1b

    if-eqz v5, :cond_19

    const/4 v5, 0x1

    const/4 v10, 0x0

    .line 395
    :try_start_c
    invoke-static {v3, v5, v10}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getFileName(III)Ljava/lang/String;

    move-result-object v11

    .line 396
    invoke-static {v3, v5, v5}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getFileName(III)Ljava/lang/String;

    move-result-object v10
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_10
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_1a
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_19
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_18
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_17
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_c} :catch_16

    if-nez v15, :cond_13

    .line 399
    :try_start_d
    new-instance v5, Lcom/android/server/wallpaper/WallpaperData;

    invoke-static/range {p1 .. p1}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v13

    invoke-direct {v5, v2, v13, v11, v10}, Lcom/android/server/wallpaper/WallpaperData;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    move-object v15, v5

    :cond_13
    const/4 v5, 0x0

    .line 401
    invoke-virtual {v1, v12, v15, v5}, Lcom/android/server/wallpaper/WallpaperDataParser;->parseWallpaperAttributes(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/wallpaper/WallpaperData;Z)V

    .line 402
    iget-object v5, v1, Lcom/android/server/wallpaper/WallpaperDataParser;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v10, v15, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v10}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v10

    invoke-virtual {v5, v15, v4, v10, v2}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->initializeThumnailFile(Lcom/android/server/wallpaper/WallpaperData;III)Ljava/io/File;

    .line 404
    sget-boolean v5, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_PREVIEW_LOCK_ONLY_LIVE_WALLPAPER:Z

    if-eqz v5, :cond_14

    const/4 v5, 0x0

    .line 405
    invoke-interface {v12, v5, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 406
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_14

    .line 407
    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    iput-object v5, v15, Lcom/android/server/wallpaper/WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 411
    :cond_14
    invoke-virtual {v15}, Lcom/android/server/wallpaper/WallpaperData;->cropExists()Z

    move-result v5

    if-nez v5, :cond_15

    .line 412
    invoke-virtual {v15}, Lcom/android/server/wallpaper/WallpaperData;->sourceExists()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 413
    iget-object v5, v1, Lcom/android/server/wallpaper/WallpaperDataParser;->mWallpaperCropper:Lcom/android/server/wallpaper/WallpaperCropper;

    invoke-virtual {v5, v15}, Lcom/android/server/wallpaper/WallpaperCropper;->generateCrop(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 416
    :cond_15
    iget-object v5, v1, Lcom/android/server/wallpaper/WallpaperDataParser;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v9, v15, Lcom/android/server/wallpaper/WallpaperData;->cropFile:Ljava/io/File;

    iget-object v10, v15, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v5, v9, v10}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->generateResizedBitmap(Ljava/io/File;Lcom/samsung/server/wallpaper/SemWallpaperData;)V

    const-string v5, "callingPackage"

    const/4 v9, 0x0

    .line 418
    invoke-interface {v12, v9, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 421
    iget-object v9, v15, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v9}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWallpaperHistoryList()Ljava/util/ArrayList;

    move-result-object v9

    if-nez v9, :cond_16

    .line 422
    iget-object v9, v15, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v9, v12}, Lcom/samsung/server/wallpaper/SemWallpaperData;->parseWallpaperHistoryInfo(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_16
    if-eqz v5, :cond_17

    .line 426
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_17

    .line 427
    sget-object v9, Lcom/android/server/wallpaper/WallpaperDataParser;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "legacyCallingPackage: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-virtual {v15, v5}, Lcom/android/server/wallpaper/WallpaperData;->setCallingPackage(Ljava/lang/String;)V

    .line 432
    :cond_17
    iget-object v5, v15, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v5, v4}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setWhich(I)V

    .line 433
    sget-object v5, Lcom/android/server/wallpaper/WallpaperDataParser;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "lockWallpaper.mSemWallpaperData.setWhich("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperDataParser;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v4, v4, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    iget v5, v15, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    iget-object v8, v15, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v4, v5, v8}, Lcom/samsung/server/wallpaper/LegibilityColor;->initSemWallpaperColors(ILcom/samsung/server/wallpaper/SemWallpaperData;)V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_2d
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_1e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_1d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d .. :try_end_d} :catch_1b

    goto/16 :goto_23

    :catch_16
    move-exception v0

    goto/16 :goto_9

    :catch_17
    move-exception v0

    move-object/from16 v10, p4

    move-object v2, v0

    move v8, v5

    move-object/from16 v9, v19

    move-object/from16 v7, v21

    goto/16 :goto_2c

    :catch_18
    move-exception v0

    move-object/from16 v10, p4

    move-object v2, v0

    move v8, v5

    move-object/from16 v9, v19

    move-object/from16 v7, v21

    goto/16 :goto_2e

    :catch_19
    move-exception v0

    move-object/from16 v10, p4

    move-object v2, v0

    move v8, v5

    move-object/from16 v9, v19

    move-object/from16 v7, v21

    goto/16 :goto_30

    :catch_1a
    move-exception v0

    move-object/from16 v10, p4

    move-object v2, v0

    move v8, v5

    move-object/from16 v9, v19

    move-object/from16 v7, v21

    goto/16 :goto_32

    :catch_1b
    move-exception v0

    goto/16 :goto_1d

    :catch_1c
    move-exception v0

    move-object/from16 v10, p4

    move-object v2, v0

    :goto_f
    move-object/from16 v9, v19

    move-object/from16 v7, v21

    goto/16 :goto_1f

    :catch_1d
    move-exception v0

    move-object/from16 v10, p4

    move-object v2, v0

    :goto_10
    move-object/from16 v9, v19

    move-object/from16 v7, v21

    goto/16 :goto_20

    :catch_1e
    move-exception v0

    move-object/from16 v10, p4

    move-object v2, v0

    :goto_11
    move-object/from16 v9, v19

    move-object/from16 v7, v21

    goto/16 :goto_21

    :catch_1f
    move-exception v0

    move-object/from16 v10, p4

    move-object v2, v0

    :goto_12
    move-object/from16 v9, v19

    move-object/from16 v7, v21

    goto/16 :goto_22

    :catch_20
    move-exception v0

    move-object/from16 v21, v7

    goto :goto_1b

    :catch_21
    move-exception v0

    move/from16 v16, v11

    :goto_13
    move/from16 v20, v13

    :goto_14
    move-object/from16 v10, p4

    move-object v2, v0

    move-object/from16 v9, v19

    goto :goto_1f

    :catch_22
    move-exception v0

    move/from16 v16, v11

    :goto_15
    move/from16 v20, v13

    :goto_16
    move-object/from16 v10, p4

    move-object v2, v0

    move-object/from16 v9, v19

    goto :goto_20

    :catch_23
    move-exception v0

    move/from16 v16, v11

    :goto_17
    move/from16 v20, v13

    :goto_18
    move-object/from16 v10, p4

    move-object v2, v0

    move-object/from16 v9, v19

    goto :goto_21

    :catch_24
    move-exception v0

    move/from16 v16, v11

    :goto_19
    move/from16 v20, v13

    :goto_1a
    move-object/from16 v10, p4

    move-object v2, v0

    move-object/from16 v9, v19

    goto/16 :goto_22

    :catch_25
    move-exception v0

    move-object/from16 v19, v5

    move-object/from16 v21, v7

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    :goto_1b
    move/from16 v16, v11

    :goto_1c
    move/from16 v20, v13

    :goto_1d
    move-object/from16 v10, p4

    move-object v2, v0

    :goto_1e
    const/4 v8, 0x1

    goto/16 :goto_2a

    :catch_26
    move-exception v0

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move/from16 v16, v11

    move/from16 v20, v13

    move-object/from16 v10, p4

    move-object v2, v0

    move-object v9, v5

    :goto_1f
    const/4 v8, 0x1

    goto/16 :goto_2c

    :catch_27
    move-exception v0

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move/from16 v16, v11

    move/from16 v20, v13

    move-object/from16 v10, p4

    move-object v2, v0

    move-object v9, v5

    :goto_20
    const/4 v8, 0x1

    goto/16 :goto_2e

    :catch_28
    move-exception v0

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move/from16 v16, v11

    move/from16 v20, v13

    move-object/from16 v10, p4

    move-object v2, v0

    move-object v9, v5

    :goto_21
    const/4 v8, 0x1

    goto/16 :goto_30

    :catch_29
    move-exception v0

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move/from16 v16, v11

    move/from16 v20, v13

    move-object/from16 v10, p4

    move-object v2, v0

    move-object v9, v5

    :goto_22
    const/4 v8, 0x1

    goto/16 :goto_32

    :catch_2a
    move-object/from16 v17, v8

    move-object/from16 v18, v9

    :catch_2b
    move/from16 v16, v11

    :catch_2c
    move/from16 v20, v13

    :catch_2d
    move-object/from16 v10, p4

    goto/16 :goto_24

    :cond_18
    move-object/from16 v22, v4

    move-object/from16 v19, v5

    move-object/from16 v21, v7

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move/from16 v16, v11

    move/from16 v20, v13

    move/from16 v7, p2

    :cond_19
    :goto_23
    const/4 v8, 0x1

    move-object/from16 v10, p4

    if-ne v14, v8, :cond_1a

    move v2, v8

    move-object v4, v15

    goto/16 :goto_35

    :cond_1a
    move/from16 v11, v16

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    move-object/from16 v5, v19

    move/from16 v13, v20

    move-object/from16 v7, v21

    move-object/from16 v4, v22

    goto/16 :goto_6

    :catch_2e
    move-exception v0

    move-object/from16 v19, v5

    move-object/from16 v21, v7

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 p4, v10

    move/from16 v16, v11

    move/from16 v20, v13

    const/4 v8, 0x1

    goto/16 :goto_25

    :catch_2f
    move-exception v0

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 p4, v10

    move/from16 v16, v11

    move/from16 v20, v13

    const/4 v8, 0x1

    goto/16 :goto_26

    :catch_30
    move-exception v0

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 p4, v10

    move/from16 v16, v11

    move/from16 v20, v13

    const/4 v8, 0x1

    goto/16 :goto_27

    :catch_31
    move-exception v0

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 p4, v10

    move/from16 v16, v11

    move/from16 v20, v13

    const/4 v8, 0x1

    goto/16 :goto_28

    :catch_32
    move-exception v0

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 p4, v10

    move/from16 v16, v11

    move/from16 v20, v13

    const/4 v8, 0x1

    goto/16 :goto_29

    :catch_33
    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 p4, v10

    move/from16 v16, v11

    move/from16 v20, v13

    :goto_24
    const/4 v8, 0x1

    goto/16 :goto_33

    :catch_34
    move-exception v0

    move-object/from16 v19, v5

    move-object/from16 v21, v7

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 p4, v10

    move/from16 v16, v11

    move/from16 v20, v13

    const/4 v8, 0x1

    move-object/from16 v15, p3

    :goto_25
    move-object v2, v0

    goto/16 :goto_2a

    :catch_35
    move-exception v0

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 p4, v10

    move/from16 v16, v11

    move/from16 v20, v13

    const/4 v8, 0x1

    move-object/from16 v15, p3

    :goto_26
    move-object v2, v0

    move-object v9, v5

    goto/16 :goto_2c

    :catch_36
    move-exception v0

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 p4, v10

    move/from16 v16, v11

    move/from16 v20, v13

    const/4 v8, 0x1

    move-object/from16 v15, p3

    :goto_27
    move-object v2, v0

    move-object v9, v5

    goto/16 :goto_2e

    :catch_37
    move-exception v0

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 p4, v10

    move/from16 v16, v11

    move/from16 v20, v13

    const/4 v8, 0x1

    move-object/from16 v15, p3

    :goto_28
    move-object v2, v0

    move-object v9, v5

    goto/16 :goto_30

    :catch_38
    move-exception v0

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 p4, v10

    move/from16 v16, v11

    move/from16 v20, v13

    const/4 v8, 0x1

    move-object/from16 v15, p3

    :goto_29
    move-object v2, v0

    move-object v9, v5

    goto/16 :goto_32

    :catch_39
    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 p4, v10

    move/from16 v16, v11

    move/from16 v20, v13

    const/4 v8, 0x1

    move-object/from16 v15, p3

    goto/16 :goto_33

    :catch_3a
    move-exception v0

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move/from16 v16, v11

    move/from16 v20, v13

    const/4 v8, 0x1

    move-object/from16 v15, p3

    move-object v2, v0

    move-object v9, v5

    goto/16 :goto_2b

    :catch_3b
    move-exception v0

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move/from16 v16, v11

    move/from16 v20, v13

    const/4 v8, 0x1

    move-object/from16 v15, p3

    move-object v2, v0

    move-object v9, v5

    goto/16 :goto_2d

    :catch_3c
    move-exception v0

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move/from16 v16, v11

    move/from16 v20, v13

    const/4 v8, 0x1

    move-object/from16 v15, p3

    move-object v2, v0

    move-object v9, v5

    goto/16 :goto_2f

    :catch_3d
    move-exception v0

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move/from16 v16, v11

    move/from16 v20, v13

    const/4 v8, 0x1

    move-object/from16 v15, p3

    move-object v2, v0

    move-object v9, v5

    goto/16 :goto_31

    :catch_3e
    move-exception v0

    move-object/from16 v19, v5

    move-object/from16 v21, v7

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move/from16 v16, v11

    move/from16 v20, v13

    const/4 v8, 0x1

    move-object/from16 v15, p3

    move-object v2, v0

    const/4 v10, 0x0

    .line 453
    :goto_2a
    sget-object v4, Lcom/android/server/wallpaper/WallpaperDataParser;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, v21

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v9, v19

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_34

    :catch_3f
    move-exception v0

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move/from16 v16, v11

    move/from16 v20, v13

    const/4 v8, 0x1

    move-object v9, v5

    move-object/from16 v15, p3

    move-object v2, v0

    :goto_2b
    const/4 v10, 0x0

    .line 451
    :goto_2c
    sget-object v4, Lcom/android/server/wallpaper/WallpaperDataParser;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_34

    :catch_40
    move-exception v0

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move/from16 v16, v11

    move/from16 v20, v13

    const/4 v8, 0x1

    move-object v9, v5

    move-object/from16 v15, p3

    move-object v2, v0

    :goto_2d
    const/4 v10, 0x0

    .line 449
    :goto_2e
    sget-object v4, Lcom/android/server/wallpaper/WallpaperDataParser;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_34

    :catch_41
    move-exception v0

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move/from16 v16, v11

    move/from16 v20, v13

    const/4 v8, 0x1

    move-object v9, v5

    move-object/from16 v15, p3

    move-object v2, v0

    :goto_2f
    const/4 v10, 0x0

    .line 447
    :goto_30
    sget-object v4, Lcom/android/server/wallpaper/WallpaperDataParser;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    :catch_42
    move-exception v0

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move/from16 v16, v11

    move/from16 v20, v13

    const/4 v8, 0x1

    move-object v9, v5

    move-object/from16 v15, p3

    move-object v2, v0

    :goto_31
    const/4 v10, 0x0

    .line 445
    :goto_32
    sget-object v4, Lcom/android/server/wallpaper/WallpaperDataParser;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    :catch_43
    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move/from16 v16, v11

    move/from16 v20, v13

    const/4 v8, 0x1

    move-object/from16 v15, p3

    const/4 v10, 0x0

    .line 443
    :goto_33
    sget-object v2, Lcom/android/server/wallpaper/WallpaperDataParser;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "no current wallpaper -- first boot?"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_34
    move-object v4, v15

    const/4 v2, 0x0

    .line 455
    :goto_35
    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 457
    iget-object v5, v1, Lcom/android/server/wallpaper/WallpaperDataParser;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    move-object/from16 v6, v18

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->ensureSaneWallpaperDisplaySize(Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;I)V

    if-eqz v16, :cond_1e

    if-nez v2, :cond_1b

    move-object/from16 v9, v17

    .line 461
    iget-object v5, v9, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v5, v7, v7, v7, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 462
    iget-object v5, v6, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v5, v7, v7, v7, v7}, Landroid/graphics/Rect;->set(IIII)V

    const-string v5, ""

    .line 463
    iput-object v5, v9, Lcom/android/server/wallpaper/WallpaperData;->name:Ljava/lang/String;

    goto :goto_36

    :cond_1b
    move-object/from16 v9, v17

    .line 465
    iget v5, v9, Lcom/android/server/wallpaper/WallpaperData;->wallpaperId:I

    if-gtz v5, :cond_1c

    .line 466
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperUtils;->makeWallpaperIdLocked()I

    move-result v5

    iput v5, v9, Lcom/android/server/wallpaper/WallpaperData;->wallpaperId:I

    .line 473
    :cond_1c
    :goto_36
    invoke-virtual {v1, v9}, Lcom/android/server/wallpaper/WallpaperDataParser;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperData;)V

    if-eqz v4, :cond_1d

    move v5, v8

    goto :goto_37

    :cond_1d
    const/4 v5, 0x3

    :goto_37
    or-int/2addr v5, v3

    .line 476
    iput v5, v9, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    goto :goto_38

    :cond_1e
    move-object/from16 v9, v17

    :goto_38
    if-eqz v20, :cond_20

    if-nez v2, :cond_1f

    const/4 v4, 0x0

    :cond_1f
    if-eqz v4, :cond_20

    .line 483
    invoke-virtual {v1, v4}, Lcom/android/server/wallpaper/WallpaperDataParser;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperData;)V

    const/4 v1, 0x2

    or-int/2addr v1, v3

    .line 484
    iput v1, v4, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 488
    :cond_20
    new-instance v1, Lcom/android/server/wallpaper/WallpaperDataParser$WallpaperLoadingResult;

    const/4 v3, 0x0

    invoke-direct {v1, v9, v4, v2, v3}, Lcom/android/server/wallpaper/WallpaperDataParser$WallpaperLoadingResult;-><init>(Lcom/android/server/wallpaper/WallpaperData;Lcom/android/server/wallpaper/WallpaperData;ZLcom/android/server/wallpaper/WallpaperDataParser$WallpaperLoadingResult-IA;)V

    return-object v1
.end method

.method public makeJournaledFile(II)Lcom/android/internal/util/JournaledFile;
    .locals 2

    const/4 p0, 0x2

    const/4 v0, 0x0

    .line 148
    invoke-static {p2, p0, v0}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getFileName(III)Ljava/lang/String;

    move-result-object p0

    .line 149
    new-instance p2, Ljava/io/File;

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperDir(I)Ljava/io/File;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 150
    new-instance p1, Lcom/android/internal/util/JournaledFile;

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".tmp"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2, v0}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object p1
.end method

.method public parseWallpaperAttributes(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/wallpaper/WallpaperData;Z)V
    .locals 10

    const/4 v0, 0x0

    const-string v1, "id"

    const/4 v2, -0x1

    .line 544
    invoke-interface {p1, v0, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 546
    iput v1, p2, Lcom/android/server/wallpaper/WallpaperData;->wallpaperId:I

    .line 547
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperUtils;->getCurrentWallpaperId()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 548
    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperUtils;->setCurrentWallpaperId(I)V

    goto :goto_0

    .line 551
    :cond_0
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperUtils;->makeWallpaperIdLocked()I

    move-result v1

    iput v1, p2, Lcom/android/server/wallpaper/WallpaperData;->wallpaperId:I

    .line 554
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperDataParser;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;

    move-result-object v1

    if-nez p3, :cond_2

    const-string/jumbo p3, "width"

    .line 557
    invoke-interface {p1, v0, p3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    iput p3, v1, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mWidth:I

    const-string p3, "height"

    .line 558
    invoke-interface {p1, v0, p3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    iput p3, v1, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mHeight:I

    .line 560
    :cond_2
    iget-object p3, p2, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    const-string v3, "cropLeft"

    invoke-virtual {p0, p1, v3, v2}, Lcom/android/server/wallpaper/WallpaperDataParser;->getAttributeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, p3, Landroid/graphics/Rect;->left:I

    .line 561
    iget-object p3, p2, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    const-string v3, "cropTop"

    invoke-virtual {p0, p1, v3, v2}, Lcom/android/server/wallpaper/WallpaperDataParser;->getAttributeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, p3, Landroid/graphics/Rect;->top:I

    .line 562
    iget-object p3, p2, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    const-string v3, "cropRight"

    invoke-virtual {p0, p1, v3, v2}, Lcom/android/server/wallpaper/WallpaperDataParser;->getAttributeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, p3, Landroid/graphics/Rect;->right:I

    .line 563
    iget-object p3, p2, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    const-string v3, "cropBottom"

    invoke-virtual {p0, p1, v3, v2}, Lcom/android/server/wallpaper/WallpaperDataParser;->getAttributeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, p3, Landroid/graphics/Rect;->bottom:I

    .line 564
    iget-object p3, v1, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mPadding:Landroid/graphics/Rect;

    const-string/jumbo v3, "paddingLeft"

    invoke-virtual {p0, p1, v3, v2}, Lcom/android/server/wallpaper/WallpaperDataParser;->getAttributeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, p3, Landroid/graphics/Rect;->left:I

    .line 565
    iget-object p3, v1, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mPadding:Landroid/graphics/Rect;

    const-string/jumbo v3, "paddingTop"

    invoke-virtual {p0, p1, v3, v2}, Lcom/android/server/wallpaper/WallpaperDataParser;->getAttributeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, p3, Landroid/graphics/Rect;->top:I

    .line 566
    iget-object p3, v1, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mPadding:Landroid/graphics/Rect;

    const-string/jumbo v3, "paddingRight"

    invoke-virtual {p0, p1, v3, v2}, Lcom/android/server/wallpaper/WallpaperDataParser;->getAttributeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, p3, Landroid/graphics/Rect;->right:I

    .line 567
    iget-object p3, v1, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mPadding:Landroid/graphics/Rect;

    const-string/jumbo v1, "paddingBottom"

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/wallpaper/WallpaperDataParser;->getAttributeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, p3, Landroid/graphics/Rect;->bottom:I

    const-string p3, "dimAmount"

    const/4 v1, 0x0

    .line 568
    invoke-virtual {p0, p1, p3, v1}, Lcom/android/server/wallpaper/WallpaperDataParser;->getAttributeFloat(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;F)F

    move-result p3

    iput p3, p2, Lcom/android/server/wallpaper/WallpaperData;->mWallpaperDimAmount:F

    const-string p3, "dimAmountsCount"

    .line 569
    invoke-virtual {p0, p1, p3, v2}, Lcom/android/server/wallpaper/WallpaperDataParser;->getAttributeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result p3

    if-lez p3, :cond_4

    .line 571
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3, p3}, Landroid/util/SparseArray;-><init>(I)V

    move v4, v2

    :goto_1
    if-ge v4, p3, :cond_3

    .line 573
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dimUID"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v5, v2}, Lcom/android/server/wallpaper/WallpaperDataParser;->getAttributeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v5

    .line 574
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dimValue"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p1, v6, v1}, Lcom/android/server/wallpaper/WallpaperDataParser;->getAttributeFloat(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;F)F

    move-result v6

    .line 575
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 577
    :cond_3
    iput-object v3, p2, Lcom/android/server/wallpaper/WallpaperData;->mUidToDimAmount:Landroid/util/SparseArray;

    :cond_4
    const-string p3, "colorsCount"

    .line 579
    invoke-virtual {p0, p1, p3, v2}, Lcom/android/server/wallpaper/WallpaperDataParser;->getAttributeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result p3

    const-string v1, "allColorsCount"

    .line 580
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/wallpaper/WallpaperDataParser;->getAttributeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v1

    const-string v3, "colorHints"

    const/4 v4, 0x1

    if-lez v1, :cond_6

    .line 582
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3, v1}, Ljava/util/HashMap;-><init>(I)V

    move v5, v2

    :goto_2
    if-ge v5, v1, :cond_5

    .line 584
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "allColorsValue"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p1, v6, v2}, Lcom/android/server/wallpaper/WallpaperDataParser;->getAttributeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v6

    .line 585
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "allColorsPopulation"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, p1, v7, v2}, Lcom/android/server/wallpaper/WallpaperDataParser;->getAttributeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v7

    .line 586
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 588
    :cond_5
    invoke-virtual {p0, p1, v3, v2}, Lcom/android/server/wallpaper/WallpaperDataParser;->getAttributeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v1

    .line 589
    new-instance v3, Landroid/app/WallpaperColors;

    invoke-direct {v3, p3, v1}, Landroid/app/WallpaperColors;-><init>(Ljava/util/Map;I)V

    iput-object v3, p2, Lcom/android/server/wallpaper/WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    goto :goto_5

    :cond_6
    if-lez p3, :cond_a

    move-object v5, v0

    move-object v6, v5

    move-object v7, v6

    move v1, v2

    :goto_3
    if-ge v1, p3, :cond_9

    .line 593
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "colorValue"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, p1, v8, v2}, Lcom/android/server/wallpaper/WallpaperDataParser;->getAttributeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v8

    if-nez v1, :cond_7

    move-object v5, v8

    goto :goto_4

    :cond_7
    if-ne v1, v4, :cond_8

    move-object v6, v8

    goto :goto_4

    :cond_8
    const/4 v9, 0x2

    if-ne v1, v9, :cond_9

    move-object v7, v8

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 604
    :cond_9
    invoke-virtual {p0, p1, v3, v2}, Lcom/android/server/wallpaper/WallpaperDataParser;->getAttributeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result p3

    .line 605
    new-instance v1, Landroid/app/WallpaperColors;

    invoke-direct {v1, v5, v6, v7, p3}, Landroid/app/WallpaperColors;-><init>(Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;I)V

    iput-object v1, p2, Lcom/android/server/wallpaper/WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    :cond_a
    :goto_5
    const-string/jumbo p3, "name"

    .line 607
    invoke-interface {p1, v0, p3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/android/server/wallpaper/WallpaperData;->name:Ljava/lang/String;

    const-string p3, "backup"

    .line 608
    invoke-interface {p1, v0, p3, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p3

    iput-boolean p3, p2, Lcom/android/server/wallpaper/WallpaperData;->allowBackup:Z

    .line 610
    iget-object p3, p2, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    const-string v1, "creationTime"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setCreationTime(Ljava/lang/String;)V

    .line 611
    iget-object p3, p2, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    const-string v1, "isPreloaded"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "true"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p3, v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setIsPreloaded(Z)V

    .line 612
    iget-object p3, p2, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    const-string v1, "isCopied"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p3, v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setIsCopied(Z)V

    .line 613
    iget-object p3, p2, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    const-string v1, "lastCallingPackage"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setLastCallingPackage(Ljava/lang/String;)V

    .line 614
    iget-object p3, p2, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    const-string v1, "lastClearCallstackWithNullPackage"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setLastClearCallstackWithNullPackage(Ljava/lang/String;)V

    .line 617
    iget-object p3, p2, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    const-string/jumbo v1, "type"

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/wallpaper/WallpaperDataParser;->getAttributeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {p3, p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setWpType(I)V

    .line 619
    iget-object p0, p2, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result p0

    if-ne p0, v4, :cond_b

    .line 620
    iget-object p0, p2, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    const-string/jumbo p3, "motionPkgName"

    invoke-interface {p1, v0, p3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setMotionPkgName(Ljava/lang/String;)V

    .line 623
    :cond_b
    iget-object p0, p2, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result p0

    const/4 p3, 0x4

    if-ne p0, p3, :cond_c

    .line 624
    iget-object p0, p2, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    const-string p3, "animatedPkgName"

    invoke-interface {p1, v0, p3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setAnimatedPkgName(Ljava/lang/String;)V

    .line 627
    :cond_c
    iget-object p0, p2, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result p0

    const/16 p3, 0x8

    if-ne p0, p3, :cond_d

    .line 628
    iget-object p0, p2, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    const-string/jumbo p3, "videoFilePath"

    invoke-interface {p1, v0, p3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setVideoFilePath(Ljava/lang/String;)V

    .line 629
    iget-object p0, p2, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    const-string/jumbo p3, "videoPkgName"

    invoke-interface {p1, v0, p3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setVideoPkgName(Ljava/lang/String;)V

    .line 630
    iget-object p0, p2, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    const-string/jumbo p3, "videoFileName"

    invoke-interface {p1, v0, p3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setVideoFileName(Ljava/lang/String;)V

    .line 631
    iget-object p0, p2, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    const-string/jumbo p3, "videoDefaultHasBeenUsed"

    invoke-interface {p1, v0, p3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    invoke-virtual {p0, p3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setVideoDefaultHasBeenUsed(Z)V

    .line 634
    :cond_d
    iget-object p0, p2, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    const-string p3, "externalParams"

    invoke-interface {p1, v0, p3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/samsung/android/wallpaper/utils/WallpaperExtraBundleHelper;->fromJson(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setExternalParams(Landroid/os/Bundle;)V

    .line 635
    iget-object p0, p2, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    const-string/jumbo p3, "uri"

    invoke-interface {p1, v0, p3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/samsung/server/wallpaper/SemWallpaperData;->setUri(Ljava/lang/String;)V

    .line 637
    iget-object p0, p2, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    const-string p2, "history"

    invoke-interface {p1, v0, p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperData;->parseWallpaperHistoryInfo(Ljava/lang/String;)V

    return-void
.end method

.method public restoreNamedResourceLocked(Lcom/android/server/wallpaper/WallpaperData;)Z
    .locals 10

    .line 859
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-le v0, v2, :cond_c

    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "res:"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 860
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x3a

    .line 863
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_0

    .line 865
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v4

    :goto_0
    const/16 v6, 0x2f

    .line 869
    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    if-lez v6, :cond_1

    add-int/lit8 v7, v6, 0x1

    .line 871
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_1
    move-object v7, v4

    :goto_1
    const/4 v8, 0x1

    if-lez v3, :cond_2

    if-lez v6, :cond_2

    sub-int v9, v6, v3

    if-le v9, v8, :cond_2

    add-int/2addr v3, v8

    .line 876
    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v4

    :goto_2
    if-eqz v5, :cond_c

    if-eqz v7, :cond_c

    if-eqz v3, :cond_c

    const/4 v6, -0x1

    .line 885
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperDataParser;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0

    .line 886
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 887
    invoke-virtual {p0, v0, v4, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_3

    .line 889
    sget-object p0, Lcom/android/server/wallpaper/WallpaperDataParser;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "couldn\'t resolve identifier pkg="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " type="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ident="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 919
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 926
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 927
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v1

    .line 894
    :cond_3
    :try_start_1
    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 895
    :try_start_2
    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 896
    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 897
    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 899
    :cond_4
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p1, Lcom/android/server/wallpaper/WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 900
    :try_start_3
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperData;->cropFile:Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const p1, 0x8000

    :try_start_4
    new-array p1, p1, [B

    .line 904
    :goto_3
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_5

    .line 905
    invoke-virtual {v2, p1, v1, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 906
    invoke-virtual {v3, p1, v1, v4}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_3

    .line 910
    :cond_5
    sget-object p1, Lcom/android/server/wallpaper/WallpaperDataParser;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Restored wallpaper: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 919
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 921
    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 924
    invoke-static {v3}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 926
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 927
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v8

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_5

    :catchall_1
    move-exception p1

    move-object v3, v4

    goto :goto_4

    :catch_1
    move-exception p1

    move-object v3, v4

    goto :goto_5

    :catch_2
    move-object v3, v4

    goto :goto_6

    :catch_3
    move-object v3, v4

    goto :goto_7

    :catchall_2
    move-exception p1

    move-object v2, v4

    move-object v3, v2

    :goto_4
    move-object v4, p0

    move-object p0, p1

    goto/16 :goto_c

    :catch_4
    move-exception p1

    move-object v2, v4

    move-object v3, v2

    :goto_5
    move-object v4, p0

    move-object p0, p1

    goto :goto_8

    :catch_5
    move-object v2, v4

    move-object v3, v2

    :catch_6
    :goto_6
    move-object v4, p0

    goto :goto_a

    :catch_7
    move-object v2, v4

    move-object v3, v2

    :catch_8
    :goto_7
    move-object v4, p0

    goto :goto_b

    :catchall_3
    move-exception p0

    move-object v2, v4

    move-object v3, v2

    goto/16 :goto_c

    :catch_9
    move-exception p0

    move-object v2, v4

    move-object v3, v2

    .line 917
    :goto_8
    :try_start_5
    sget-object p1, Lcom/android/server/wallpaper/WallpaperDataParser;->TAG:Ljava/lang/String;

    const-string v0, "IOException while restoring wallpaper "

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 919
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz v2, :cond_6

    .line 921
    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    :cond_6
    if-eqz v3, :cond_7

    .line 924
    :goto_9
    invoke-static {v3}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 926
    :cond_7
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 927
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_d

    :catch_a
    move-object v2, v4

    move-object v3, v2

    .line 915
    :goto_a
    :try_start_6
    sget-object p0, Lcom/android/server/wallpaper/WallpaperDataParser;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Resource not found: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 919
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz v2, :cond_8

    .line 921
    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    :cond_8
    if-eqz v3, :cond_7

    goto :goto_9

    :catch_b
    move-object v2, v4

    move-object v3, v2

    .line 913
    :goto_b
    :try_start_7
    sget-object p0, Lcom/android/server/wallpaper/WallpaperDataParser;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Package name "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not found"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 919
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz v2, :cond_9

    .line 921
    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    :cond_9
    if-eqz v3, :cond_7

    goto :goto_9

    :catchall_4
    move-exception p0

    .line 919
    :goto_c
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz v2, :cond_a

    .line 921
    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    :cond_a
    if-eqz v3, :cond_b

    .line 924
    invoke-static {v3}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 926
    :cond_b
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 927
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 928
    throw p0

    :cond_c
    :goto_d
    return v1
.end method

.method public saveSettingsLocked(ILcom/android/server/wallpaper/WallpaperData;Lcom/android/server/wallpaper/WallpaperData;)V
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move v1, v0

    goto :goto_0

    .line 653
    :cond_0
    iget v1, p2, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    invoke-static {v1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v1

    .line 654
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wallpaper/WallpaperDataParser;->makeJournaledFile(II)Lcom/android/internal/util/JournaledFile;

    move-result-object p1

    const/4 v1, 0x0

    .line 658
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 659
    :try_start_1
    invoke-static {v2}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v0

    .line 660
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    if-eqz p2, :cond_1

    const-string/jumbo v1, "wp"

    .line 663
    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/wallpaper/WallpaperDataParser;->writeWallpaperAttributes(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperData;)V

    :cond_1
    if-eqz p3, :cond_2

    const-string p2, "kwp"

    .line 667
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/wallpaper/WallpaperDataParser;->writeWallpaperAttributes(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperData;)V

    .line 670
    :cond_2
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 672
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 673
    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 674
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 675
    invoke-virtual {p1}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-object v1, v2

    .line 677
    :catch_1
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 678
    invoke-virtual {p1}, Lcom/android/internal/util/JournaledFile;->rollback()V

    :goto_1
    return-void
.end method

.method public writeWallpaperAttributes(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperData;)V
    .locals 8

    .line 693
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperDataParser;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;

    move-result-object v0

    const/4 v2, 0x0

    .line 694
    invoke-interface {p1, v2, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 695
    iget v3, p3, Lcom/android/server/wallpaper/WallpaperData;->wallpaperId:I

    const-string v4, "id"

    invoke-interface {p1, v2, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 696
    iget v3, v0, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mWidth:I

    const-string/jumbo v4, "width"

    invoke-interface {p1, v2, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "height"

    .line 697
    iget v4, v0, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mHeight:I

    invoke-interface {p1, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 699
    iget-object v3, p3, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    const-string v4, "cropLeft"

    invoke-interface {p1, v2, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 700
    iget-object v3, p3, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    const-string v4, "cropTop"

    invoke-interface {p1, v2, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 701
    iget-object v3, p3, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    const-string v4, "cropRight"

    invoke-interface {p1, v2, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 702
    iget-object v3, p3, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    const-string v4, "cropBottom"

    invoke-interface {p1, v2, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 704
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-eqz v3, :cond_0

    const-string/jumbo v4, "paddingLeft"

    .line 705
    invoke-interface {p1, v2, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 707
    :cond_0
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-eqz v3, :cond_1

    const-string/jumbo v4, "paddingTop"

    .line 708
    invoke-interface {p1, v2, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 710
    :cond_1
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-eqz v3, :cond_2

    const-string/jumbo v4, "paddingRight"

    .line 711
    invoke-interface {p1, v2, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 713
    :cond_2
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_3

    const-string/jumbo v3, "paddingBottom"

    .line 714
    invoke-interface {p1, v2, v3, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3
    const-string v0, "dimAmount"

    .line 717
    iget v3, p3, Lcom/android/server/wallpaper/WallpaperData;->mWallpaperDimAmount:F

    invoke-interface {p1, v2, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 718
    iget-object v0, p3, Lcom/android/server/wallpaper/WallpaperData;->mUidToDimAmount:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const-string v3, "dimAmountsCount"

    .line 719
    invoke-interface {p1, v2, v3, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v3, 0x1

    if-lez v0, :cond_4

    move v0, v1

    move v4, v0

    .line 722
    :goto_0
    iget-object v5, p3, Lcom/android/server/wallpaper/WallpaperData;->mUidToDimAmount:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 723
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dimUID"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p3, Lcom/android/server/wallpaper/WallpaperData;->mUidToDimAmount:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-interface {p1, v2, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 724
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dimValue"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p3, Lcom/android/server/wallpaper/WallpaperData;->mUidToDimAmount:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-interface {p1, v2, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    add-int/2addr v4, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 729
    :cond_4
    iget-object v0, p3, Lcom/android/server/wallpaper/WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    if-eqz v0, :cond_7

    .line 730
    invoke-virtual {v0}, Landroid/app/WallpaperColors;->getMainColors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v4, "colorsCount"

    .line 731
    invoke-interface {p1, v2, v4, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    if-lez v0, :cond_5

    move v4, v1

    :goto_1
    if-ge v4, v0, :cond_5

    .line 734
    iget-object v5, p3, Lcom/android/server/wallpaper/WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    invoke-virtual {v5}, Landroid/app/WallpaperColors;->getMainColors()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Color;

    .line 735
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorValue"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Landroid/graphics/Color;->toArgb()I

    move-result v5

    invoke-interface {p1, v2, v6, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 739
    :cond_5
    iget-object v0, p3, Lcom/android/server/wallpaper/WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    invoke-virtual {v0}, Landroid/app/WallpaperColors;->getAllColors()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const-string v4, "allColorsCount"

    .line 740
    invoke-interface {p1, v2, v4, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    if-lez v0, :cond_6

    .line 743
    iget-object v0, p3, Lcom/android/server/wallpaper/WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    invoke-virtual {v0}, Landroid/app/WallpaperColors;->getAllColors()Ljava/util/Map;

    move-result-object v0

    .line 744
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 743
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v4, v1

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 745
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "allColorsValue"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {p1, v2, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 746
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "allColorsPopulation"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {p1, v2, v6, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    add-int/2addr v4, v3

    goto :goto_2

    .line 751
    :cond_6
    iget-object v0, p3, Lcom/android/server/wallpaper/WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    invoke-virtual {v0}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result v0

    const-string v4, "colorHints"

    invoke-interface {p1, v2, v4, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_7
    const-string/jumbo v0, "name"

    .line 754
    iget-object v4, p3, Lcom/android/server/wallpaper/WallpaperData;->name:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 755
    iget-object v0, p3, Lcom/android/server/wallpaper/WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_8

    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperDataParser;->mImageWallpaper:Landroid/content/ComponentName;

    .line 756
    invoke-virtual {v0, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 757
    iget-object v0, p3, Lcom/android/server/wallpaper/WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 758
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "component"

    .line 757
    invoke-interface {p1, v2, v4, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 761
    :cond_8
    iget-boolean v0, p3, Lcom/android/server/wallpaper/WallpaperData;->allowBackup:Z

    if-eqz v0, :cond_9

    const-string v0, "backup"

    .line 762
    invoke-interface {p1, v2, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 765
    :cond_9
    iget-object v0, p3, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getCreationTime()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 766
    iget-object v0, p3, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getCreationTime()Ljava/lang/String;

    move-result-object v0

    const-string v4, "creationTime"

    invoke-interface {p1, v2, v4, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 769
    :cond_a
    iget-object v0, p3, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getIsPreloaded()Z

    move-result v0

    const-string/jumbo v4, "true"

    if-eqz v0, :cond_b

    const-string v0, "isPreloaded"

    .line 770
    invoke-interface {p1, v2, v0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 773
    :cond_b
    iget-object v0, p3, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getIsCopied()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "isCopied"

    .line 774
    invoke-interface {p1, v2, v0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 777
    :cond_c
    iget-object v0, p3, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getLastCallingPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 778
    iget-object v0, p3, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getLastCallingPackage()Ljava/lang/String;

    move-result-object v0

    const-string v5, "lastCallingPackage"

    invoke-interface {p1, v2, v5, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 781
    :cond_d
    iget-object v0, p3, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getLastClearCallstackWithNullPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 782
    iget-object v0, p3, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getLastClearCallstackWithNullPackage()Ljava/lang/String;

    move-result-object v0

    const-string v5, "lastClearCallstackWithNullPackage"

    invoke-interface {p1, v2, v5, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 785
    :cond_e
    iget-object v0, p3, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getExternalParams()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 787
    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WallpaperExtraBundleHelper;->toJson(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    const-string v5, "externalParams"

    .line 789
    invoke-interface {p1, v2, v5, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 793
    :cond_f
    iget-object v0, p3, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "type"

    invoke-interface {p1, v2, v5, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 795
    iget v0, p3, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isDex(I)Z

    move-result v0

    const/16 v5, 0x8

    if-nez v0, :cond_12

    iget-object v0, p3, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 796
    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result v0

    if-ne v0, v5, :cond_12

    .line 797
    iget-object v0, p3, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getVideoFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 798
    iget-object v0, p3, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getVideoFilePath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "videoFilePath"

    invoke-interface {p1, v2, v6, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 800
    :cond_10
    iget-object v0, p3, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getVideoPkgName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 801
    iget-object v0, p3, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getVideoPkgName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "videoPkgName"

    invoke-interface {p1, v2, v6, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 803
    :cond_11
    iget-object v0, p3, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getVideoFileName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 804
    iget-object v0, p3, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getVideoFileName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "videoFileName"

    invoke-interface {p1, v2, v6, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 808
    :cond_12
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperDataParser;->mSemWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperDataParser;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCMFWallpaper:Lcom/samsung/server/wallpaper/CMFWallpaper;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/CMFWallpaper;->getDeviceColor()Ljava/lang/String;

    move-result-object p0

    const/4 v6, 0x2

    invoke-virtual {v0, v6, p0}, Landroid/app/SemWallpaperResourcesInfo;->getDefaultWallpaperType(ILjava/lang/String;)I

    move-result p0

    if-ne p0, v5, :cond_14

    .line 809
    iget-object p0, p3, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getVideoDefaultHasBeenUsed()Z

    move-result p0

    if-eqz p0, :cond_14

    .line 810
    iget-object p0, p3, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getVideoDefaultHasBeenUsed()Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_3

    :cond_13
    const-string v4, "false"

    :goto_3
    const-string/jumbo p0, "videoDefaultHasBeenUsed"

    invoke-interface {p1, v2, p0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_14
    const-string p0, "kwp"

    .line 814
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    .line 815
    iget p0, p3, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isDex(I)Z

    move-result p0

    if-nez p0, :cond_15

    iget-object p0, p3, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 816
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result p0

    if-ne p0, v3, :cond_15

    iget-object p0, p3, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 817
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getMotionPkgName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 818
    iget-object p0, p3, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getMotionPkgName()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "motionPkgName"

    invoke-interface {p1, v2, v0, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 821
    :cond_15
    iget p0, p3, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isDex(I)Z

    move-result p0

    if-nez p0, :cond_16

    iget-object p0, p3, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 822
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_16

    iget-object p0, p3, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 823
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getAnimatedPkgName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 824
    iget-object p0, p3, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getAnimatedPkgName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "animatedPkgName"

    invoke-interface {p1, v2, v0, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 828
    :cond_16
    iget p0, p3, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isDex(I)Z

    move-result p0

    if-nez p0, :cond_18

    .line 829
    iget-object p0, p3, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_17

    iget-object p0, p3, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 830
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result p0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_17

    iget-object p0, p3, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 831
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWpType()I

    move-result p0

    if-nez p0, :cond_18

    .line 832
    :cond_17
    iget-object p0, p3, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getUri()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 833
    iget-object p0, p3, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getUri()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "uri"

    invoke-interface {p1, v2, v0, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 838
    :cond_18
    iget-object p0, p3, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getWallpaperHistoryList()Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_1b

    .line 840
    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    .line 841
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v3

    if-ltz v0, :cond_1b

    :goto_4
    if-gt v1, v0, :cond_1a

    .line 844
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eq v1, v0, :cond_19

    const-string v3, ";"

    .line 846
    invoke-virtual {p3, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_1a
    const-string p0, "history"

    .line 850
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, v2, p0, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 854
    :cond_1b
    invoke-interface {p1, v2, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
