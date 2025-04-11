.class public Lcom/android/server/display/DisplayManagerService$PresentationDisplay;
.super Ljava/lang/Object;
.source "DisplayManagerService.java"


# instance fields
.field public displayId:I

.field public packageName:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$fgetdisplayId(Lcom/android/server/display/DisplayManagerService$PresentationDisplay;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;->displayId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetpackageName(Lcom/android/server/display/DisplayManagerService$PresentationDisplay;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 7270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7271
    iput p1, p0, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;->displayId:I

    .line 7272
    iput-object p2, p0, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;->packageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 7282
    check-cast p1, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;

    iget v0, p1, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;->displayId:I

    iget v1, p0, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;->displayId:I

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;->packageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getDisplayId()I
    .locals 0

    .line 7286
    iget p0, p0, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;->displayId:I

    return p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 7290
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .line 7277
    iget v0, p0, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;->displayId:I

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;->packageName:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_0
    mul-int/2addr v0, p0

    return v0
.end method
