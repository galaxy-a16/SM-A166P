.class public Lcom/android/server/om/wallpapertheme/MetaDataManager$Uid;
.super Ljava/lang/Object;
.source "MetaDataManager.java"


# instance fields
.field public mDefaultValue:Ljava/lang/String;

.field public mDestAttribName:Ljava/lang/String;

.field public mOpacity:Ljava/lang/String;

.field public mPOption:Ljava/lang/String;

.field public mType:I

.field public mUidValue:Ljava/lang/String;

.field public mValueRef:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDestAttribName(Lcom/android/server/om/wallpapertheme/MetaDataManager$Uid;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$Uid;->mDestAttribName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOpacity(Lcom/android/server/om/wallpapertheme/MetaDataManager$Uid;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$Uid;->mOpacity:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmType(Lcom/android/server/om/wallpapertheme/MetaDataManager$Uid;)I
    .locals 0

    iget p0, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$Uid;->mType:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUidValue(Lcom/android/server/om/wallpapertheme/MetaDataManager$Uid;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$Uid;->mUidValue:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmValueRef(Lcom/android/server/om/wallpapertheme/MetaDataManager$Uid;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$Uid;->mValueRef:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$Uid;->mUidValue:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$Uid;->mDestAttribName:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$Uid;->mValueRef:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$Uid;->mPOption:Ljava/lang/String;

    if-eqz p7, :cond_0

    invoke-virtual {p7}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p7, 0x0

    :cond_1
    iput-object p7, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$Uid;->mOpacity:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$Uid;->mDefaultValue:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 p3, 0x4

    const/4 p4, 0x3

    const/4 p5, 0x2

    const/4 p6, 0x1

    const/4 p7, 0x0

    const/4 v0, -0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p1, "BgColor"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_1
    const-string p1, "TextColor"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_2
    const-string p1, "Color"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move v0, p3

    goto :goto_0

    :sswitch_3
    const-string p1, "Text"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    move v0, p4

    goto :goto_0

    :sswitch_4
    const-string p1, "Bool"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    move v0, p5

    goto :goto_0

    :sswitch_5
    const-string p1, "Integer"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    move v0, p6

    goto :goto_0

    :sswitch_6
    const-string p1, "TintColor"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    move v0, p7

    :goto_0
    packed-switch v0, :pswitch_data_0

    iput p7, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$Uid;->mType:I

    goto :goto_1

    :pswitch_0
    iput p3, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$Uid;->mType:I

    goto :goto_1

    :pswitch_1
    iput p4, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$Uid;->mType:I

    goto :goto_1

    :pswitch_2
    iput p5, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$Uid;->mType:I

    goto :goto_1

    :pswitch_3
    iput p6, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$Uid;->mType:I

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x396c4ef8 -> :sswitch_6
        -0x2811e6e2 -> :sswitch_5
        0x1faf0a -> :sswitch_4
        0x27b94d -> :sswitch_3
        0x3e43f43 -> :sswitch_2
        0x380d4e16 -> :sswitch_1
        0x5702adfe -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getDestAttribName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$Uid;->mDestAttribName:Ljava/lang/String;

    return-object p0
.end method

.method public getOpacity()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$Uid;->mOpacity:Ljava/lang/String;

    return-object p0
.end method

.method public getReference()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$Uid;->mValueRef:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$Uid;->mType:I

    return p0
.end method

.method public getUidValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/MetaDataManager$Uid;->mUidValue:Ljava/lang/String;

    return-object p0
.end method
